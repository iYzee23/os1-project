
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	ea813103          	ld	sp,-344(sp) # 80009ea8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	479050ef          	jal	ra,80005c94 <start>

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
    80001084:	00009297          	auipc	t0,0x9
    80001088:	ee22b623          	sd	sp,-276(t0) # 80009f70 <framePointer>

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
constexpr uint64 SEM_SIGNAL = 0x24;
constexpr uint64 TIME_SLEEP = 0x31;
constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

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
    80001280:	0d313423          	sd	s3,200(sp)
    80001284:	0f010413          	addi	s0,sp,240

};

inline uint64 KRiscv::r_scause() {
    uint64 volatile scause;
    asm volatile ("csrr %0, scause" : "=r"(scause));
    80001288:	142027f3          	csrr	a5,scause
    8000128c:	f0f43c23          	sd	a5,-232(s0)
    return scause;
    80001290:	f1843703          	ld	a4,-232(s0)
    uint64 scause = r_scause();
    if (scause == ECALL_SYS || scause == ECALL_USER) {
    80001294:	ff870693          	addi	a3,a4,-8
    80001298:	00100793          	li	a5,1
    8000129c:	04d7f063          	bgeu	a5,a3,800012dc <_ZN6KRiscv16interruptHandlerEv+0x70>
                *(char*)CONSOLE_TX_DATA = KConsole::outBuff->get();
            KRiscv::w_sstatus(sstatus);
            KRiscv::w_sepc(sepc);
        }
    }
    else if (scause == TIMER) {
    800012a0:	fff00793          	li	a5,-1
    800012a4:	03f79793          	slli	a5,a5,0x3f
    800012a8:	00178793          	addi	a5,a5,1
    800012ac:	58f70a63          	beq	a4,a5,80001840 <_ZN6KRiscv16interruptHandlerEv+0x5d4>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXT_HW) {
    800012b0:	fff00793          	li	a5,-1
    800012b4:	03f79793          	slli	a5,a5,0x3f
    800012b8:	00978793          	addi	a5,a5,9
    800012bc:	5ef70263          	beq	a4,a5,800018a0 <_ZN6KRiscv16interruptHandlerEv+0x634>
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }

    800012c0:	0e813083          	ld	ra,232(sp)
    800012c4:	0e013403          	ld	s0,224(sp)
    800012c8:	0d813483          	ld	s1,216(sp)
    800012cc:	0d013903          	ld	s2,208(sp)
    800012d0:	0c813983          	ld	s3,200(sp)
    800012d4:	0f010113          	addi	sp,sp,240
    800012d8:	00008067          	ret
        asm volatile("mv %0, a0" : "=r" (name));
    800012dc:	00050793          	mv	a5,a0
        if (name == MEM_ALLOC) {
    800012e0:	00100713          	li	a4,1
    800012e4:	10e78663          	beq	a5,a4,800013f0 <_ZN6KRiscv16interruptHandlerEv+0x184>
        else if (name == MEM_FREE) {
    800012e8:	00200713          	li	a4,2
    800012ec:	14e78263          	beq	a5,a4,80001430 <_ZN6KRiscv16interruptHandlerEv+0x1c4>
        else if (name == USER_MODE) {
    800012f0:	00500713          	li	a4,5
    800012f4:	16e78e63          	beq	a5,a4,80001470 <_ZN6KRiscv16interruptHandlerEv+0x204>
        else if (name == THREAD_CREATE_CPP) {
    800012f8:	01000713          	li	a4,16
    800012fc:	18e78a63          	beq	a5,a4,80001490 <_ZN6KRiscv16interruptHandlerEv+0x224>
        else if (name == THREAD_CREATE) {
    80001300:	01100713          	li	a4,17
    80001304:	1ee78e63          	beq	a5,a4,80001500 <_ZN6KRiscv16interruptHandlerEv+0x294>
        else if (name == THREAD_EXIT) {
    80001308:	01200713          	li	a4,18
    8000130c:	26e78e63          	beq	a5,a4,80001588 <_ZN6KRiscv16interruptHandlerEv+0x31c>
        else if (name == THREAD_DISPATCH) {
    80001310:	01300713          	li	a4,19
    80001314:	2ce78a63          	beq	a5,a4,800015e8 <_ZN6KRiscv16interruptHandlerEv+0x37c>
        else if (name == SEM_OPEN) {
    80001318:	02100713          	li	a4,33
    8000131c:	2ee78e63          	beq	a5,a4,80001618 <_ZN6KRiscv16interruptHandlerEv+0x3ac>
        else if (name == SEM_CLOSE) {
    80001320:	02200713          	li	a4,34
    80001324:	34e78e63          	beq	a5,a4,80001680 <_ZN6KRiscv16interruptHandlerEv+0x414>
        else if (name == SEM_WAIT) {
    80001328:	02300713          	li	a4,35
    8000132c:	3ae78e63          	beq	a5,a4,800016e8 <_ZN6KRiscv16interruptHandlerEv+0x47c>
        else if (name == SEM_SIGNAL) {
    80001330:	02400713          	li	a4,36
    80001334:	40e78a63          	beq	a5,a4,80001748 <_ZN6KRiscv16interruptHandlerEv+0x4dc>
        else if (name == TIME_SLEEP) {
    80001338:	03100713          	li	a4,49
    8000133c:	44e78c63          	beq	a5,a4,80001794 <_ZN6KRiscv16interruptHandlerEv+0x528>
        else if (name == GETC) {
    80001340:	04100713          	li	a4,65
    80001344:	48e78e63          	beq	a5,a4,800017e0 <_ZN6KRiscv16interruptHandlerEv+0x574>
        else if (name == PUTC) {
    80001348:	04200713          	li	a4,66
    8000134c:	f6e79ae3          	bne	a5,a4,800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001350:	00009797          	auipc	a5,0x9
    80001354:	b907b783          	ld	a5,-1136(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001358:	0007b783          	ld	a5,0(a5)
    8000135c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(c));
    80001360:	00058593          	mv	a1,a1
    80001364:	0ff5f593          	andi	a1,a1,255
    asm volatile ("csrw scause, %0" :: "r"(scause));
}

inline uint64 KRiscv::r_sepc() {
    uint64 volatile sepc;
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001368:	141027f3          	csrr	a5,sepc
    8000136c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001370:	fb843483          	ld	s1,-72(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    80001374:	00448493          	addi	s1,s1,4
    asm volatile ("csrc sstatus, %0" :: "r"(mask));
}

inline uint64 KRiscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001378:	100027f3          	csrr	a5,sstatus
    8000137c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001380:	fb043903          	ld	s2,-80(s0)
            KConsole::outBuff->put(c);
    80001384:	00009797          	auipc	a5,0x9
    80001388:	b647b783          	ld	a5,-1180(a5) # 80009ee8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000138c:	0007b503          	ld	a0,0(a5)
    80001390:	00002097          	auipc	ra,0x2
    80001394:	87c080e7          	jalr	-1924(ra) # 80002c0c <_ZN8KConsole3putEc>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)
    80001398:	00009797          	auipc	a5,0x9
    8000139c:	af87b783          	ld	a5,-1288(a5) # 80009e90 <_GLOBAL_OFFSET_TABLE_+0x10>
    800013a0:	0007b783          	ld	a5,0(a5)
    800013a4:	0007c783          	lbu	a5,0(a5)
                   && KConsole::outBuff->getCnt() > 0)
    800013a8:	0207f793          	andi	a5,a5,32
    800013ac:	48078463          	beqz	a5,80001834 <_ZN6KRiscv16interruptHandlerEv+0x5c8>
    800013b0:	00009797          	auipc	a5,0x9
    800013b4:	b387b783          	ld	a5,-1224(a5) # 80009ee8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800013b8:	0007b503          	ld	a0,0(a5)
    800013bc:	00002097          	auipc	ra,0x2
    800013c0:	a14080e7          	jalr	-1516(ra) # 80002dd0 <_ZN8KConsole6getCntEv>
    800013c4:	46a05863          	blez	a0,80001834 <_ZN6KRiscv16interruptHandlerEv+0x5c8>
                *(char*)CONSOLE_TX_DATA = KConsole::outBuff->get();
    800013c8:	00009797          	auipc	a5,0x9
    800013cc:	b207b783          	ld	a5,-1248(a5) # 80009ee8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800013d0:	0007b503          	ld	a0,0(a5)
    800013d4:	00002097          	auipc	ra,0x2
    800013d8:	91c080e7          	jalr	-1764(ra) # 80002cf0 <_ZN8KConsole3getEv>
    800013dc:	00009797          	auipc	a5,0x9
    800013e0:	ac47b783          	ld	a5,-1340(a5) # 80009ea0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013e4:	0007b783          	ld	a5,0(a5)
    800013e8:	00a78023          	sb	a0,0(a5)
            while ((*(char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)
    800013ec:	fadff06f          	j	80001398 <_ZN6KRiscv16interruptHandlerEv+0x12c>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800013f0:	00009497          	auipc	s1,0x9
    800013f4:	af04b483          	ld	s1,-1296(s1) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800013f8:	0004b783          	ld	a5,0(s1)
    800013fc:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r" (sizeBlock));
    80001400:	00058513          	mv	a0,a1
            void* res = KMemoryAllocator::mem_alloc(sizeBlock);
    80001404:	00003097          	auipc	ra,0x3
    80001408:	2bc080e7          	jalr	700(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
            asm volatile("mv a0, %0" : : "r" (res));
    8000140c:	00050513          	mv	a0,a0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001410:	0004b783          	ld	a5,0(s1)
    80001414:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001418:	141027f3          	csrr	a5,sepc
    8000141c:	f2f43023          	sd	a5,-224(s0)
    return sepc;
    80001420:	f2043783          	ld	a5,-224(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001424:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001428:	14179073          	csrw	sepc,a5
}
    8000142c:	e95ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001430:	00009497          	auipc	s1,0x9
    80001434:	ab04b483          	ld	s1,-1360(s1) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001438:	0004b783          	ld	a5,0(s1)
    8000143c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(addr));
    80001440:	00058513          	mv	a0,a1
            int res = KMemoryAllocator::mem_free((void*)addr);
    80001444:	00003097          	auipc	ra,0x3
    80001448:	368080e7          	jalr	872(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
            asm volatile("mv a0, %0" : : "r"(res));
    8000144c:	00050513          	mv	a0,a0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001450:	0004b783          	ld	a5,0(s1)
    80001454:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001458:	141027f3          	csrr	a5,sepc
    8000145c:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    80001460:	f2843783          	ld	a5,-216(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001464:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001468:	14179073          	csrw	sepc,a5
}
    8000146c:	e55ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    asm volatile ("csrc sstatus, %0" :: "r"(mask));
    80001470:	10000793          	li	a5,256
    80001474:	1007b073          	csrc	sstatus,a5
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001478:	141027f3          	csrr	a5,sepc
    8000147c:	f2f43823          	sd	a5,-208(s0)
    return sepc;
    80001480:	f3043783          	ld	a5,-208(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001484:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001488:	14179073          	csrw	sepc,a5
}
    8000148c:	e35ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001490:	00009797          	auipc	a5,0x9
    80001494:	a507b783          	ld	a5,-1456(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001498:	0007b783          	ld	a5,0(a5)
    8000149c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    800014a0:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    800014a4:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(fja));
    800014a8:	00060513          	mv	a0,a2
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    800014ac:	0687b683          	ld	a3,104(a5)
            asm volatile("mv %0, a3" : "=r"(args));
    800014b0:	00068593          	mv	a1,a3
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    800014b4:	0707b703          	ld	a4,112(a5)
            asm volatile("mv %0, a4" : "=r"(stack));
    800014b8:	00070613          	mv	a2,a4
            *rucka = KPCB::createThread(fja, args, stack);
    800014bc:	00002097          	auipc	ra,0x2
    800014c0:	cfc080e7          	jalr	-772(ra) # 800031b8 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    800014c4:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) asm volatile("li a0, 0");
    800014c8:	02050863          	beqz	a0,800014f8 <_ZN6KRiscv16interruptHandlerEv+0x28c>
    800014cc:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800014d0:	00009797          	auipc	a5,0x9
    800014d4:	a107b783          	ld	a5,-1520(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800014d8:	0007b783          	ld	a5,0(a5)
    800014dc:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800014e0:	141027f3          	csrr	a5,sepc
    800014e4:	f2f43c23          	sd	a5,-200(s0)
    return sepc;
    800014e8:	f3843783          	ld	a5,-200(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800014ec:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800014f0:	14179073          	csrw	sepc,a5
}
    800014f4:	dcdff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            else asm volatile("li a0, -1");
    800014f8:	fff00513          	li	a0,-1
    800014fc:	fd5ff06f          	j	800014d0 <_ZN6KRiscv16interruptHandlerEv+0x264>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001500:	00009797          	auipc	a5,0x9
    80001504:	9e07b783          	ld	a5,-1568(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001508:	0007b783          	ld	a5,0(a5)
    8000150c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001510:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001514:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(fja));
    80001518:	00060513          	mv	a0,a2
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    8000151c:	0687b683          	ld	a3,104(a5)
            asm volatile("mv %0, a3" : "=r"(args));
    80001520:	00068593          	mv	a1,a3
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001524:	0707b703          	ld	a4,112(a5)
            asm volatile("mv %0, a4" : "=r"(stack));
    80001528:	00070613          	mv	a2,a4
            *rucka = KPCB::createThread(fja, args, stack);
    8000152c:	00002097          	auipc	ra,0x2
    80001530:	c8c080e7          	jalr	-884(ra) # 800031b8 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    80001534:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) {
    80001538:	04050463          	beqz	a0,80001580 <_ZN6KRiscv16interruptHandlerEv+0x314>
    }
    void setSleeping(bool val) { sleeping = val; }
    void setWaiting(bool val) { waiting = val; }
    void setErr(bool val) { err = val; }
    int startIt() {
        if (started) return -1;
    8000153c:	03454783          	lbu	a5,52(a0)
    80001540:	00079a63          	bnez	a5,80001554 <_ZN6KRiscv16interruptHandlerEv+0x2e8>
        started = true;
    80001544:	00100793          	li	a5,1
    80001548:	02f50a23          	sb	a5,52(a0)
        KScheduler::put(this);
    8000154c:	00002097          	auipc	ra,0x2
    80001550:	a58080e7          	jalr	-1448(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
                asm volatile("li a0, 0");
    80001554:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001558:	00009797          	auipc	a5,0x9
    8000155c:	9887b783          	ld	a5,-1656(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001560:	0007b783          	ld	a5,0(a5)
    80001564:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001568:	141027f3          	csrr	a5,sepc
    8000156c:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    80001570:	f4043783          	ld	a5,-192(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    80001574:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001578:	14179073          	csrw	sepc,a5
}
    8000157c:	d45ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            else asm volatile("li a0, -1");
    80001580:	fff00513          	li	a0,-1
    80001584:	fd5ff06f          	j	80001558 <_ZN6KRiscv16interruptHandlerEv+0x2ec>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001588:	141027f3          	csrr	a5,sepc
    8000158c:	f4f43823          	sd	a5,-176(s0)
    return sepc;
    80001590:	f5043483          	ld	s1,-176(s0)
            uint64 sepc = r_sepc() + 4;
    80001594:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001598:	100027f3          	csrr	a5,sstatus
    8000159c:	f4f43423          	sd	a5,-184(s0)
    return sstatus;
    800015a0:	f4843903          	ld	s2,-184(s0)
            KPCB::running->setFinished(true);
    800015a4:	00009797          	auipc	a5,0x9
    800015a8:	9147b783          	ld	a5,-1772(a5) # 80009eb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015ac:	0007b783          	ld	a5,0(a5)
        if (finished) return;
    800015b0:	0307c703          	lbu	a4,48(a5)
    800015b4:	02071063          	bnez	a4,800015d4 <_ZN6KRiscv16interruptHandlerEv+0x368>
        finished = val;
    800015b8:	00100713          	li	a4,1
    800015bc:	02e78823          	sb	a4,48(a5)
        counter--;
    800015c0:	00009717          	auipc	a4,0x9
    800015c4:	91873703          	ld	a4,-1768(a4) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800015c8:	00072783          	lw	a5,0(a4)
    800015cc:	fff7879b          	addiw	a5,a5,-1
    800015d0:	00f72023          	sw	a5,0(a4)
            KPCB::dispatch();
    800015d4:	00002097          	auipc	ra,0x2
    800015d8:	aa4080e7          	jalr	-1372(ra) # 80003078 <_ZN4KPCB8dispatchEv>
}

inline void KRiscv::w_sstatus(uint64 sstatus) {
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800015dc:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800015e0:	14149073          	csrw	sepc,s1
}
    800015e4:	cddff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800015e8:	141027f3          	csrr	a5,sepc
    800015ec:	f6f43023          	sd	a5,-160(s0)
    return sepc;
    800015f0:	f6043483          	ld	s1,-160(s0)
            uint64 sepc = r_sepc() + 4;
    800015f4:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800015f8:	100027f3          	csrr	a5,sstatus
    800015fc:	f4f43c23          	sd	a5,-168(s0)
    return sstatus;
    80001600:	f5843903          	ld	s2,-168(s0)
            KPCB::dispatch();
    80001604:	00002097          	auipc	ra,0x2
    80001608:	a74080e7          	jalr	-1420(ra) # 80003078 <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    8000160c:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001610:	14149073          	csrw	sepc,s1
}
    80001614:	cadff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001618:	00009797          	auipc	a5,0x9
    8000161c:	8c87b783          	ld	a5,-1848(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001620:	0007b783          	ld	a5,0(a5)
    80001624:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001628:	00058493          	mv	s1,a1
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    8000162c:	0607b603          	ld	a2,96(a5)
            asm volatile("mv %0, a2" : "=r"(init));
    80001630:	00060513          	mv	a0,a2
            *rucka = KSemaphore::createSemaphore(init);
    80001634:	02051513          	slli	a0,a0,0x20
    80001638:	02055513          	srli	a0,a0,0x20
    8000163c:	00003097          	auipc	ra,0x3
    80001640:	49c080e7          	jalr	1180(ra) # 80004ad8 <_ZN10KSemaphore15createSemaphoreEm>
    80001644:	00a4b023          	sd	a0,0(s1)
            if (*rucka != nullptr) asm volatile("li a0, 0");
    80001648:	02050863          	beqz	a0,80001678 <_ZN6KRiscv16interruptHandlerEv+0x40c>
    8000164c:	00000513          	li	a0,0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001650:	00009797          	auipc	a5,0x9
    80001654:	8907b783          	ld	a5,-1904(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001658:	0007b783          	ld	a5,0(a5)
    8000165c:	04a7b823          	sd	a0,80(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001660:	141027f3          	csrr	a5,sepc
    80001664:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    80001668:	f6843783          	ld	a5,-152(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000166c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001670:	14179073          	csrw	sepc,a5
}
    80001674:	c4dff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            else asm volatile("li a0, -1");
    80001678:	fff00513          	li	a0,-1
    8000167c:	fd5ff06f          	j	80001650 <_ZN6KRiscv16interruptHandlerEv+0x3e4>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001680:	00009797          	auipc	a5,0x9
    80001684:	8607b783          	ld	a5,-1952(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001688:	0007b783          	ld	a5,0(a5)
    8000168c:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001690:	00058493          	mv	s1,a1
            delete rucka;
    80001694:	02048e63          	beqz	s1,800016d0 <_ZN6KRiscv16interruptHandlerEv+0x464>
#include "KPCB.hpp"

class KSemaphore {
public:
    ~KSemaphore() {
        while (head) {
    80001698:	0084b503          	ld	a0,8(s1)
    8000169c:	02050463          	beqz	a0,800016c4 <_ZN6KRiscv16interruptHandlerEv+0x458>
            KPCB* old = head;
            head = head->nextSemaphore;
    800016a0:	04853783          	ld	a5,72(a0)
    800016a4:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    800016a8:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    800016ac:	00100793          	li	a5,1
    800016b0:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    800016b4:	02050923          	sb	zero,50(a0)
            old->setErr(true);
            old->setWaiting(false);
            KScheduler::put(old);
    800016b8:	00002097          	auipc	ra,0x2
    800016bc:	8ec080e7          	jalr	-1812(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    800016c0:	fd9ff06f          	j	80001698 <_ZN6KRiscv16interruptHandlerEv+0x42c>
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void operator delete(void* addr) {
        KMemoryAllocator::mem_free(addr);
    800016c4:	00048513          	mv	a0,s1
    800016c8:	00003097          	auipc	ra,0x3
    800016cc:	0e4080e7          	jalr	228(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800016d0:	141027f3          	csrr	a5,sepc
    800016d4:	f6f43823          	sd	a5,-144(s0)
    return sepc;
    800016d8:	f7043783          	ld	a5,-144(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    800016dc:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800016e0:	14179073          	csrw	sepc,a5
}
    800016e4:	bddff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800016e8:	141027f3          	csrr	a5,sepc
    800016ec:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    800016f0:	f8043483          	ld	s1,-128(s0)
            uint64 sepc = r_sepc() + 4;
    800016f4:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800016f8:	100027f3          	csrr	a5,sstatus
    800016fc:	f6f43c23          	sd	a5,-136(s0)
    return sstatus;
    80001700:	f7843903          	ld	s2,-136(s0)
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001704:	00008797          	auipc	a5,0x8
    80001708:	7dc7b783          	ld	a5,2012(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000170c:	0007b783          	ld	a5,0(a5)
    80001710:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001714:	00058513          	mv	a0,a1
            if (rucka) rucka->wait();
    80001718:	00050c63          	beqz	a0,80001730 <_ZN6KRiscv16interruptHandlerEv+0x4c4>
    void wait() { if(--val < 0) block(); }
    8000171c:	00052783          	lw	a5,0(a0)
    80001720:	fff7879b          	addiw	a5,a5,-1
    80001724:	00f52023          	sw	a5,0(a0)
    80001728:	02079713          	slli	a4,a5,0x20
    8000172c:	00074863          	bltz	a4,8000173c <_ZN6KRiscv16interruptHandlerEv+0x4d0>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001730:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001734:	14149073          	csrw	sepc,s1
}
    80001738:	b89ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    8000173c:	00003097          	auipc	ra,0x3
    80001740:	2ec080e7          	jalr	748(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80001744:	fedff06f          	j	80001730 <_ZN6KRiscv16interruptHandlerEv+0x4c4>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001748:	00008797          	auipc	a5,0x8
    8000174c:	7987b783          	ld	a5,1944(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001750:	0007b783          	ld	a5,0(a5)
    80001754:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(rucka));
    80001758:	00058513          	mv	a0,a1
            if (rucka) rucka->signal();
    8000175c:	00050a63          	beqz	a0,80001770 <_ZN6KRiscv16interruptHandlerEv+0x504>
    void signal() { if (val++ < 0) deblock(); }
    80001760:	00052783          	lw	a5,0(a0)
    80001764:	0017871b          	addiw	a4,a5,1
    80001768:	00e52023          	sw	a4,0(a0)
    8000176c:	0007ce63          	bltz	a5,80001788 <_ZN6KRiscv16interruptHandlerEv+0x51c>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001770:	141027f3          	csrr	a5,sepc
    80001774:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80001778:	f8843783          	ld	a5,-120(s0)
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
    8000177c:	00478793          	addi	a5,a5,4
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001780:	14179073          	csrw	sepc,a5
}
    80001784:	b3dff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    80001788:	00003097          	auipc	ra,0x3
    8000178c:	31c080e7          	jalr	796(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80001790:	fe1ff06f          	j	80001770 <_ZN6KRiscv16interruptHandlerEv+0x504>
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001794:	00008797          	auipc	a5,0x8
    80001798:	74c7b783          	ld	a5,1868(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000179c:	0007b783          	ld	a5,0(a5)
    800017a0:	0587b583          	ld	a1,88(a5)
            asm volatile("mv %0, a1" : "=r"(t));
    800017a4:	00058513          	mv	a0,a1
            KSleep::add(t);
    800017a8:	00002097          	auipc	ra,0x2
    800017ac:	1e0080e7          	jalr	480(ra) # 80003988 <_ZN6KSleep3addEm>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800017b0:	141027f3          	csrr	a5,sepc
    800017b4:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800017b8:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    800017bc:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800017c0:	100027f3          	csrr	a5,sstatus
    800017c4:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800017c8:	f9043903          	ld	s2,-112(s0)
            KPCB::dispatch();
    800017cc:	00002097          	auipc	ra,0x2
    800017d0:	8ac080e7          	jalr	-1876(ra) # 80003078 <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800017d4:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    800017d8:	14149073          	csrw	sepc,s1
}
    800017dc:	ae5ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            uint64 framePointerGETC = framePointer;
    800017e0:	00008797          	auipc	a5,0x8
    800017e4:	7007b783          	ld	a5,1792(a5) # 80009ee0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800017e8:	0007b903          	ld	s2,0(a5)
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    800017ec:	141027f3          	csrr	a5,sepc
    800017f0:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800017f4:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = KRiscv::r_sepc() + 4;
    800017f8:	00448493          	addi	s1,s1,4
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800017fc:	100027f3          	csrr	a5,sstatus
    80001800:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001804:	fa043983          	ld	s3,-96(s0)
            char c = KConsole::inBuff->get();
    80001808:	00008797          	auipc	a5,0x8
    8000180c:	6b87b783          	ld	a5,1720(a5) # 80009ec0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001810:	0007b503          	ld	a0,0(a5)
    80001814:	00001097          	auipc	ra,0x1
    80001818:	4dc080e7          	jalr	1244(ra) # 80002cf0 <_ZN8KConsole3getEv>
            asm volatile("mv a0, %0" :: "r"(c));
    8000181c:	00050513          	mv	a0,a0
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointerGETC));
    80001820:	04a93823          	sd	a0,80(s2)
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001824:	10091073          	csrw	sstatus,s2
    80001828:	10099073          	csrw	sstatus,s3
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    8000182c:	14149073          	csrw	sepc,s1
}
    80001830:	a91ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001834:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001838:	14149073          	csrw	sepc,s1
}
    8000183c:	a85ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
        KPCB::timeSliceCounter++;
    80001840:	00008497          	auipc	s1,0x8
    80001844:	6704b483          	ld	s1,1648(s1) # 80009eb0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001848:	0004b783          	ld	a5,0(s1)
    8000184c:	00178793          	addi	a5,a5,1
    80001850:	00f4b023          	sd	a5,0(s1)
        KSleep::remove();
    80001854:	00002097          	auipc	ra,0x2
    80001858:	0b0080e7          	jalr	176(ra) # 80003904 <_ZN6KSleep6removeEv>
        if (KPCB::timeSliceCounter >= KPCB::running->TIME_SLICE) {
    8000185c:	0004b703          	ld	a4,0(s1)
    80001860:	00100793          	li	a5,1
    80001864:	00e7e863          	bltu	a5,a4,80001874 <_ZN6KRiscv16interruptHandlerEv+0x608>
    asm volatile ("csrc sip, %0" :: "r"(mask));
    80001868:	00200793          	li	a5,2
    8000186c:	1447b073          	csrc	sip,a5
}
    80001870:	a51ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
    asm volatile ("csrr %0, sepc" : "=r"(sepc));
    80001874:	141027f3          	csrr	a5,sepc
    80001878:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000187c:	fc843483          	ld	s1,-56(s0)
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001880:	100027f3          	csrr	a5,sstatus
    80001884:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001888:	fc043903          	ld	s2,-64(s0)
            KPCB::dispatch();
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	7ec080e7          	jalr	2028(ra) # 80003078 <_ZN4KPCB8dispatchEv>
    asm volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001894:	10091073          	csrw	sstatus,s2
    asm volatile ("csrw sepc, %0" :: "r"(sepc));
    80001898:	14149073          	csrw	sepc,s1
}
    8000189c:	fcdff06f          	j	80001868 <_ZN6KRiscv16interruptHandlerEv+0x5fc>
        int consID = plic_claim();
    800018a0:	00005097          	auipc	ra,0x5
    800018a4:	c54080e7          	jalr	-940(ra) # 800064f4 <plic_claim>
    800018a8:	00050493          	mv	s1,a0
        if (consID == CONSOLE_IRQ) {
    800018ac:	00a00793          	li	a5,10
    800018b0:	00f50a63          	beq	a0,a5,800018c4 <_ZN6KRiscv16interruptHandlerEv+0x658>
        plic_complete(consID);
    800018b4:	00048513          	mv	a0,s1
    800018b8:	00005097          	auipc	ra,0x5
    800018bc:	c74080e7          	jalr	-908(ra) # 8000652c <plic_complete>
    800018c0:	a01ff06f          	j	800012c0 <_ZN6KRiscv16interruptHandlerEv+0x54>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    800018c4:	00008797          	auipc	a5,0x8
    800018c8:	5cc7b783          	ld	a5,1484(a5) # 80009e90 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018cc:	0007b783          	ld	a5,0(a5)
    800018d0:	0007c783          	lbu	a5,0(a5)
                && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
    800018d4:	0017f793          	andi	a5,a5,1
    800018d8:	fc078ee3          	beqz	a5,800018b4 <_ZN6KRiscv16interruptHandlerEv+0x648>
    800018dc:	00008797          	auipc	a5,0x8
    800018e0:	5e47b783          	ld	a5,1508(a5) # 80009ec0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800018e4:	0007b503          	ld	a0,0(a5)
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	4e8080e7          	jalr	1256(ra) # 80002dd0 <_ZN8KConsole6getCntEv>
    800018f0:	3ff00793          	li	a5,1023
    800018f4:	fca7c0e3          	blt	a5,a0,800018b4 <_ZN6KRiscv16interruptHandlerEv+0x648>
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
    800018f8:	00008797          	auipc	a5,0x8
    800018fc:	5907b783          	ld	a5,1424(a5) # 80009e88 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001900:	0007b783          	ld	a5,0(a5)
    80001904:	0007c583          	lbu	a1,0(a5)
    80001908:	00008797          	auipc	a5,0x8
    8000190c:	5b87b783          	ld	a5,1464(a5) # 80009ec0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001910:	0007b503          	ld	a0,0(a5)
    80001914:	00001097          	auipc	ra,0x1
    80001918:	2f8080e7          	jalr	760(ra) # 80002c0c <_ZN8KConsole3putEc>
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
    8000191c:	fa9ff06f          	j	800018c4 <_ZN6KRiscv16interruptHandlerEv+0x658>

0000000080001920 <_Z9mem_allocm>:

#include "../h/syscall_c.h"
#include "../h/KPCB.hpp"
#include "../h/KConsole.hpp"

void *mem_alloc(size_t size) {
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813423          	sd	s0,8(sp)
    80001928:	01010413          	addi	s0,sp,16
    size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    8000192c:	01050513          	addi	a0,a0,16
    80001930:	00655793          	srli	a5,a0,0x6
    80001934:	03f57513          	andi	a0,a0,63
    80001938:	00050463          	beqz	a0,80001940 <_Z9mem_allocm+0x20>
    8000193c:	00100513          	li	a0,1
    80001940:	00a78533          	add	a0,a5,a0
    asm volatile("mv a1, %0" : : "r" (sizeBlock));
    80001944:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x01");
    80001948:	00100513          	li	a0,1
    asm volatile("ecall");
    8000194c:	00000073          	ecall
    uint64 res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001950:	00050513          	mv	a0,a0
    return (void*)res;
}
    80001954:	00813403          	ld	s0,8(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_Z8mem_freePv>:

int mem_free(void* addr) {
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00813423          	sd	s0,8(sp)
    80001968:	01010413          	addi	s0,sp,16
    uint64 adr = (uint64)addr;
    asm volatile("mv a1, %0" : : "r" (adr));
    8000196c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001970:	00200513          	li	a0,2
    asm volatile("ecall");
    80001974:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001978:	00050513          	mv	a0,a0
    return res;
}
    8000197c:	0005051b          	sext.w	a0,a0
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret

000000008000198c <_Z8userModev>:

void userMode() {
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00813423          	sd	s0,8(sp)
    80001994:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x05");
    80001998:	00500513          	li	a0,5
    asm volatile("ecall");
    8000199c:	00000073          	ecall
}
    800019a0:	00813403          	ld	s0,8(sp)
    800019a4:	01010113          	addi	sp,sp,16
    800019a8:	00008067          	ret

00000000800019ac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>:

int thread_create_CPP(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    800019ac:	08050263          	beqz	a0,80001a30 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x84>
int thread_create_CPP(thread_t* handle, void(*start_routine)(void*), void* arg) {
    800019b0:	fd010113          	addi	sp,sp,-48
    800019b4:	02113423          	sd	ra,40(sp)
    800019b8:	02813023          	sd	s0,32(sp)
    800019bc:	00913c23          	sd	s1,24(sp)
    800019c0:	01213823          	sd	s2,16(sp)
    800019c4:	01313423          	sd	s3,8(sp)
    800019c8:	03010413          	addi	s0,sp,48
    800019cc:	00050913          	mv	s2,a0
    800019d0:	00058993          	mv	s3,a1
    if (!handle || !start_routine) return -1;
    800019d4:	06058263          	beqz	a1,80001a38 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x8c>
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    800019d8:	04060863          	beqz	a2,80001a28 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x7c>
    800019dc:	00060493          	mv	s1,a2
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    800019e0:	00002537          	lui	a0,0x2
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	f3c080e7          	jalr	-196(ra) # 80001920 <_Z9mem_allocm>
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    800019ec:	00050713          	mv	a4,a0
    asm volatile("mv a3, %0" :: "r"(args));
    800019f0:	00048693          	mv	a3,s1
    asm volatile("mv a2, %0" :: "r"(fja));
    800019f4:	00098613          	mv	a2,s3
    asm volatile("mv a1, %0" :: "r"(rucka));
    800019f8:	00090593          	mv	a1,s2
    asm volatile("li a0, 0x10");
    800019fc:	01000513          	li	a0,16
    asm volatile("ecall");
    80001a00:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    80001a04:	00050513          	mv	a0,a0
    80001a08:	0005051b          	sext.w	a0,a0
    return res;
}
    80001a0c:	02813083          	ld	ra,40(sp)
    80001a10:	02013403          	ld	s0,32(sp)
    80001a14:	01813483          	ld	s1,24(sp)
    80001a18:	01013903          	ld	s2,16(sp)
    80001a1c:	00813983          	ld	s3,8(sp)
    80001a20:	03010113          	addi	sp,sp,48
    80001a24:	00008067          	ret
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001a28:	00000493          	li	s1,0
    80001a2c:	fb5ff06f          	j	800019e0 <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x34>
    if (!handle || !start_routine) return -1;
    80001a30:	fff00513          	li	a0,-1
}
    80001a34:	00008067          	ret
    if (!handle || !start_routine) return -1;
    80001a38:	fff00513          	li	a0,-1
    80001a3c:	fd1ff06f          	j	80001a0c <_Z17thread_create_CPPPP4KPCBPFvPvES2_+0x60>

0000000080001a40 <_Z13thread_createPP4KPCBPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    80001a40:	08050263          	beqz	a0,80001ac4 <_Z13thread_createPP4KPCBPFvPvES2_+0x84>
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001a44:	fd010113          	addi	sp,sp,-48
    80001a48:	02113423          	sd	ra,40(sp)
    80001a4c:	02813023          	sd	s0,32(sp)
    80001a50:	00913c23          	sd	s1,24(sp)
    80001a54:	01213823          	sd	s2,16(sp)
    80001a58:	01313423          	sd	s3,8(sp)
    80001a5c:	03010413          	addi	s0,sp,48
    80001a60:	00050913          	mv	s2,a0
    80001a64:	00058993          	mv	s3,a1
    if (!handle || !start_routine) return -1;
    80001a68:	06058263          	beqz	a1,80001acc <_Z13thread_createPP4KPCBPFvPvES2_+0x8c>
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001a6c:	04060863          	beqz	a2,80001abc <_Z13thread_createPP4KPCBPFvPvES2_+0x7c>
    80001a70:	00060493          	mv	s1,a2
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    80001a74:	00002537          	lui	a0,0x2
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	ea8080e7          	jalr	-344(ra) # 80001920 <_Z9mem_allocm>
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    80001a80:	00050713          	mv	a4,a0
    asm volatile("mv a3, %0" :: "r"(args));
    80001a84:	00048693          	mv	a3,s1
    asm volatile("mv a2, %0" :: "r"(fja));
    80001a88:	00098613          	mv	a2,s3
    asm volatile("mv a1, %0" :: "r"(rucka));
    80001a8c:	00090593          	mv	a1,s2
    asm volatile("li a0, 0x11");
    80001a90:	01100513          	li	a0,17
    asm volatile("ecall");
    80001a94:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    80001a98:	00050513          	mv	a0,a0
    80001a9c:	0005051b          	sext.w	a0,a0
    return res;
}
    80001aa0:	02813083          	ld	ra,40(sp)
    80001aa4:	02013403          	ld	s0,32(sp)
    80001aa8:	01813483          	ld	s1,24(sp)
    80001aac:	01013903          	ld	s2,16(sp)
    80001ab0:	00813983          	ld	s3,8(sp)
    80001ab4:	03010113          	addi	sp,sp,48
    80001ab8:	00008067          	ret
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    80001abc:	00000493          	li	s1,0
    80001ac0:	fb5ff06f          	j	80001a74 <_Z13thread_createPP4KPCBPFvPvES2_+0x34>
    if (!handle || !start_routine) return -1;
    80001ac4:	fff00513          	li	a0,-1
}
    80001ac8:	00008067          	ret
    if (!handle || !start_routine) return -1;
    80001acc:	fff00513          	li	a0,-1
    80001ad0:	fd1ff06f          	j	80001aa0 <_Z13thread_createPP4KPCBPFvPvES2_+0x60>

0000000080001ad4 <_Z11thread_exitv>:

int thread_exit() {
    80001ad4:	ff010113          	addi	sp,sp,-16
    80001ad8:	00813423          	sd	s0,8(sp)
    80001adc:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x12");
    80001ae0:	01200513          	li	a0,18
    asm volatile("ecall");
    80001ae4:	00000073          	ecall
    return -1;
}
    80001ae8:	fff00513          	li	a0,-1
    80001aec:	00813403          	ld	s0,8(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00813423          	sd	s0,8(sp)
    80001b00:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    80001b04:	01300513          	li	a0,19
    asm volatile("ecall");
    80001b08:	00000073          	ecall
}
    80001b0c:	00813403          	ld	s0,8(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret

0000000080001b18 <_Z8sem_openPP10KSemaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00813423          	sd	s0,8(sp)
    80001b20:	01010413          	addi	s0,sp,16
    asm volatile("mv a2, %0" :: "r"((uint64)init));
    80001b24:	02059593          	slli	a1,a1,0x20
    80001b28:	0205d593          	srli	a1,a1,0x20
    80001b2c:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001b30:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x21");
    80001b34:	02100513          	li	a0,33
    asm volatile("ecall");
    80001b38:	00000073          	ecall
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001b3c:	00050513          	mv	a0,a0
    return res;
}
    80001b40:	0005051b          	sext.w	a0,a0
    80001b44:	00813403          	ld	s0,8(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_Z9sem_closeP10KSemaphore>:

int sem_close(sem_t handle) {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001b5c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x22");
    80001b60:	02200513          	li	a0,34
    asm volatile("ecall");
    80001b64:	00000073          	ecall
    return 0;
}
    80001b68:	00000513          	li	a0,0
    80001b6c:	00813403          	ld	s0,8(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_Z8sem_waitP10KSemaphore>:

int sem_wait(sem_t id) {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00813423          	sd	s0,8(sp)
    80001b80:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    80001b84:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x23");
    80001b88:	02300513          	li	a0,35
    asm volatile("ecall");
    80001b8c:	00000073          	ecall
    int res = 0;
    if (KPCB::running->isErr()) {
    80001b90:	00008797          	auipc	a5,0x8
    80001b94:	3287b783          	ld	a5,808(a5) # 80009eb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b98:	0007b783          	ld	a5,0(a5)
    bool isErr() const { return err; }
    80001b9c:	0337c703          	lbu	a4,51(a5)
    80001ba0:	00071a63          	bnez	a4,80001bb4 <_Z8sem_waitP10KSemaphore+0x3c>
    int res = 0;
    80001ba4:	00000513          	li	a0,0
        res = -1;
        KPCB::running->setErr(false);
    }
    return res;
}
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret
    void setErr(bool val) { err = val; }
    80001bb4:	020789a3          	sb	zero,51(a5)
        res = -1;
    80001bb8:	fff00513          	li	a0,-1
    80001bbc:	fedff06f          	j	80001ba8 <_Z8sem_waitP10KSemaphore+0x30>

0000000080001bc0 <_Z10sem_signalP10KSemaphore>:

int sem_signal(sem_t id) {
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00813423          	sd	s0,8(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    80001bcc:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x24");
    80001bd0:	02400513          	li	a0,36
    asm volatile("ecall");
    80001bd4:	00000073          	ecall
    return 0;
}
    80001bd8:	00000513          	li	a0,0
    80001bdc:	00813403          	ld	s0,8(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00813423          	sd	s0,8(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" : : "r" (time));
    80001bf4:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x31");
    80001bf8:	03100513          	li	a0,49
    asm volatile("ecall");
    80001bfc:	00000073          	ecall
    return 0;
}
    80001c00:	00000513          	li	a0,0
    80001c04:	00813403          	ld	s0,8(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_Z4getcv>:

char getc() {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00813423          	sd	s0,8(sp)
    80001c18:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x41");
    80001c1c:	04100513          	li	a0,65
    asm volatile("ecall");
    80001c20:	00000073          	ecall
    char res;
    asm volatile("mv %0, a0" : "=r" (res));
    80001c24:	00050513          	mv	a0,a0
    return res;
}
    80001c28:	0ff57513          	andi	a0,a0,255
    80001c2c:	00813403          	ld	s0,8(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_Z4putcc>:

void putc(char c) {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" : : "r" ((uint64)c));
    80001c44:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    80001c48:	04200513          	li	a0,66
    asm volatile("ecall");
    80001c4c:	00000073          	ecall
    80001c50:	00813403          	ld	s0,8(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret

0000000080001c5c <_Z15workerBodyPedjaPv>:
uint64 fibonacciDragan(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacciDragan(n - 1) + fibonacciDragan(n - 2);
}
void workerBodyPedja(void* arg) {
    80001c5c:	fe010113          	addi	sp,sp,-32
    80001c60:	00113c23          	sd	ra,24(sp)
    80001c64:	00813823          	sd	s0,16(sp)
    80001c68:	00913423          	sd	s1,8(sp)
    80001c6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001c70:	00000493          	li	s1,0
    80001c74:	0280006f          	j	80001c9c <_Z15workerBodyPedjaPv+0x40>
        printString("A: i=");
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 100; j++) {
    80001c78:	00168693          	addi	a3,a3,1
    80001c7c:	06300793          	li	a5,99
    80001c80:	00d7ec63          	bltu	a5,a3,80001c98 <_Z15workerBodyPedjaPv+0x3c>
            for (uint64 k = 0; k < 300; k++) { /* busy wait */ }
    80001c84:	00000793          	li	a5,0
    80001c88:	12b00713          	li	a4,299
    80001c8c:	fef766e3          	bltu	a4,a5,80001c78 <_Z15workerBodyPedjaPv+0x1c>
    80001c90:	00178793          	addi	a5,a5,1
    80001c94:	ff5ff06f          	j	80001c88 <_Z15workerBodyPedjaPv+0x2c>
    for (uint64 i = 0; i < 10; i++) {
    80001c98:	00148493          	addi	s1,s1,1
    80001c9c:	00900793          	li	a5,9
    80001ca0:	0497e063          	bltu	a5,s1,80001ce0 <_Z15workerBodyPedjaPv+0x84>
        printString("A: i=");
    80001ca4:	00006517          	auipc	a0,0x6
    80001ca8:	37c50513          	addi	a0,a0,892 # 80008020 <CONSOLE_STATUS+0x10>
    80001cac:	00003097          	auipc	ra,0x3
    80001cb0:	e70080e7          	jalr	-400(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80001cb4:	00000613          	li	a2,0
    80001cb8:	00a00593          	li	a1,10
    80001cbc:	0004851b          	sext.w	a0,s1
    80001cc0:	00003097          	auipc	ra,0x3
    80001cc4:	ff4080e7          	jalr	-12(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80001cc8:	00006517          	auipc	a0,0x6
    80001ccc:	56850513          	addi	a0,a0,1384 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001cd0:	00003097          	auipc	ra,0x3
    80001cd4:	e4c080e7          	jalr	-436(ra) # 80004b1c <_Z11printStringPKc>
        for (uint64 j = 0; j < 100; j++) {
    80001cd8:	00000693          	li	a3,0
    80001cdc:	fa1ff06f          	j	80001c7c <_Z15workerBodyPedjaPv+0x20>
            // TCB::yield();
        }
    }
}
    80001ce0:	01813083          	ld	ra,24(sp)
    80001ce4:	01013403          	ld	s0,16(sp)
    80001ce8:	00813483          	ld	s1,8(sp)
    80001cec:	02010113          	addi	sp,sp,32
    80001cf0:	00008067          	ret

0000000080001cf4 <_Z16workerBodyMilicaPv>:
void workerBodyMilica(void* arg) {
    80001cf4:	fe010113          	addi	sp,sp,-32
    80001cf8:	00113c23          	sd	ra,24(sp)
    80001cfc:	00813823          	sd	s0,16(sp)
    80001d00:	00913423          	sd	s1,8(sp)
    80001d04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001d08:	00000493          	li	s1,0
    80001d0c:	0280006f          	j	80001d34 <_Z16workerBodyMilicaPv+0x40>
        printString("B: i=");
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 100; j++) {
    80001d10:	00168693          	addi	a3,a3,1
    80001d14:	06300793          	li	a5,99
    80001d18:	00d7ec63          	bltu	a5,a3,80001d30 <_Z16workerBodyMilicaPv+0x3c>
            for (uint64 k = 0; k < 300; k++) { /* busy wait */ }
    80001d1c:	00000793          	li	a5,0
    80001d20:	12b00713          	li	a4,299
    80001d24:	fef766e3          	bltu	a4,a5,80001d10 <_Z16workerBodyMilicaPv+0x1c>
    80001d28:	00178793          	addi	a5,a5,1
    80001d2c:	ff5ff06f          	j	80001d20 <_Z16workerBodyMilicaPv+0x2c>
    for (uint64 i = 0; i < 16; i++) {
    80001d30:	00148493          	addi	s1,s1,1
    80001d34:	00f00793          	li	a5,15
    80001d38:	0497e063          	bltu	a5,s1,80001d78 <_Z16workerBodyMilicaPv+0x84>
        printString("B: i=");
    80001d3c:	00006517          	auipc	a0,0x6
    80001d40:	2ec50513          	addi	a0,a0,748 # 80008028 <CONSOLE_STATUS+0x18>
    80001d44:	00003097          	auipc	ra,0x3
    80001d48:	dd8080e7          	jalr	-552(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80001d4c:	00000613          	li	a2,0
    80001d50:	00a00593          	li	a1,10
    80001d54:	0004851b          	sext.w	a0,s1
    80001d58:	00003097          	auipc	ra,0x3
    80001d5c:	f5c080e7          	jalr	-164(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80001d60:	00006517          	auipc	a0,0x6
    80001d64:	4d050513          	addi	a0,a0,1232 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001d68:	00003097          	auipc	ra,0x3
    80001d6c:	db4080e7          	jalr	-588(ra) # 80004b1c <_Z11printStringPKc>
        for (uint64 j = 0; j < 100; j++) {
    80001d70:	00000693          	li	a3,0
    80001d74:	fa1ff06f          	j	80001d14 <_Z16workerBodyMilicaPv+0x20>
            // TCB::yield();
        }
    }

}
    80001d78:	01813083          	ld	ra,24(sp)
    80001d7c:	01013403          	ld	s0,16(sp)
    80001d80:	00813483          	ld	s1,8(sp)
    80001d84:	02010113          	addi	sp,sp,32
    80001d88:	00008067          	ret

0000000080001d8c <_ZZ20test_periodic_threadvEN9MojaKlasa18periodicActivationEv>:
void test_periodic_thread() {
    class MojaKlasa : public PeriodicThread {
        int num;
    public:
        MojaKlasa(time_t t, int num) : PeriodicThread(t), num(num) {}
        void periodicActivation() override {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
    80001da0:	00050493          	mv	s1,a0
            printString("PeriodicThread radi: ");
    80001da4:	00006517          	auipc	a0,0x6
    80001da8:	28c50513          	addi	a0,a0,652 # 80008030 <CONSOLE_STATUS+0x20>
    80001dac:	00003097          	auipc	ra,0x3
    80001db0:	d70080e7          	jalr	-656(ra) # 80004b1c <_Z11printStringPKc>
            printInt(num);
    80001db4:	00000613          	li	a2,0
    80001db8:	00a00593          	li	a1,10
    80001dbc:	0104a503          	lw	a0,16(s1)
    80001dc0:	00003097          	auipc	ra,0x3
    80001dc4:	ef4080e7          	jalr	-268(ra) # 80004cb4 <_Z8printIntiii>
            printString("\n");
    80001dc8:	00006517          	auipc	a0,0x6
    80001dcc:	46850513          	addi	a0,a0,1128 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001dd0:	00003097          	auipc	ra,0x3
    80001dd4:	d4c080e7          	jalr	-692(ra) # 80004b1c <_Z11printStringPKc>
        }
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	02010113          	addi	sp,sp,32
    80001de8:	00008067          	ret

0000000080001dec <_ZZ20test_periodic_threadvEN9MojaKlasaD1Ev>:
    class MojaKlasa : public PeriodicThread {
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    int signal ();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80001dfc:	00008797          	auipc	a5,0x8
    80001e00:	f5c78793          	addi	a5,a5,-164 # 80009d58 <_ZTV14PeriodicThread+0x10>
    80001e04:	00f53023          	sd	a5,0(a0)
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	670080e7          	jalr	1648(ra) # 80003478 <_ZN6ThreadD1Ev>
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZZ20test_periodic_threadvEN9MojaKlasaD0Ev>:
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    80001e34:	00050493          	mv	s1,a0
    80001e38:	00008797          	auipc	a5,0x8
    80001e3c:	f2078793          	addi	a5,a5,-224 # 80009d58 <_ZTV14PeriodicThread+0x10>
    80001e40:	00f53023          	sd	a5,0(a0)
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	634080e7          	jalr	1588(ra) # 80003478 <_ZN6ThreadD1Ev>
    80001e4c:	00048513          	mv	a0,s1
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	758080e7          	jalr	1880(ra) # 800035a8 <_ZdlPv>
    80001e58:	01813083          	ld	ra,24(sp)
    80001e5c:	01013403          	ld	s0,16(sp)
    80001e60:	00813483          	ld	s1,8(sp)
    80001e64:	02010113          	addi	sp,sp,32
    80001e68:	00008067          	ret

0000000080001e6c <_Z13fibonacciSonem>:
uint64 fibonacciSone(uint64 n) {
    80001e6c:	fe010113          	addi	sp,sp,-32
    80001e70:	00113c23          	sd	ra,24(sp)
    80001e74:	00813823          	sd	s0,16(sp)
    80001e78:	00913423          	sd	s1,8(sp)
    80001e7c:	01213023          	sd	s2,0(sp)
    80001e80:	02010413          	addi	s0,sp,32
    80001e84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001e88:	00100793          	li	a5,1
    80001e8c:	02a7f663          	bgeu	a5,a0,80001eb8 <_Z13fibonacciSonem+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001e90:	00357793          	andi	a5,a0,3
    80001e94:	02078e63          	beqz	a5,80001ed0 <_Z13fibonacciSonem+0x64>
    return fibonacciSone(n - 1) + fibonacciSone(n - 2);
    80001e98:	fff48513          	addi	a0,s1,-1
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	fd0080e7          	jalr	-48(ra) # 80001e6c <_Z13fibonacciSonem>
    80001ea4:	00050913          	mv	s2,a0
    80001ea8:	ffe48513          	addi	a0,s1,-2
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	fc0080e7          	jalr	-64(ra) # 80001e6c <_Z13fibonacciSonem>
    80001eb4:	00a90533          	add	a0,s2,a0
}
    80001eb8:	01813083          	ld	ra,24(sp)
    80001ebc:	01013403          	ld	s0,16(sp)
    80001ec0:	00813483          	ld	s1,8(sp)
    80001ec4:	00013903          	ld	s2,0(sp)
    80001ec8:	02010113          	addi	sp,sp,32
    80001ecc:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	c28080e7          	jalr	-984(ra) # 80001af8 <_Z15thread_dispatchv>
    80001ed8:	fc1ff06f          	j	80001e98 <_Z13fibonacciSonem+0x2c>

0000000080001edc <_Z15workerBodyDjapePv>:
void workerBodyDjape(void* arg) {
    80001edc:	fe010113          	addi	sp,sp,-32
    80001ee0:	00113c23          	sd	ra,24(sp)
    80001ee4:	00813823          	sd	s0,16(sp)
    80001ee8:	00913423          	sd	s1,8(sp)
    80001eec:	01213023          	sd	s2,0(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    int ind = *(int*)arg;
    80001ef4:	00052903          	lw	s2,0(a0)
    uint8 i = 0;
    80001ef8:	00000493          	li	s1,0
    80001efc:	0540006f          	j	80001f50 <_Z15workerBodyDjapePv+0x74>
        if (ind) time_sleep(10);
    80001f00:	00a00513          	li	a0,10
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	ce4080e7          	jalr	-796(ra) # 80001be8 <_Z10time_sleepm>
        thread_exit();
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	bc8080e7          	jalr	-1080(ra) # 80001ad4 <_Z11thread_exitv>
        printString("A: i=");
    80001f14:	00006517          	auipc	a0,0x6
    80001f18:	10c50513          	addi	a0,a0,268 # 80008020 <CONSOLE_STATUS+0x10>
    80001f1c:	00003097          	auipc	ra,0x3
    80001f20:	c00080e7          	jalr	-1024(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80001f24:	00000613          	li	a2,0
    80001f28:	00a00593          	li	a1,10
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	00003097          	auipc	ra,0x3
    80001f34:	d84080e7          	jalr	-636(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80001f38:	00006517          	auipc	a0,0x6
    80001f3c:	2f850513          	addi	a0,a0,760 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001f40:	00003097          	auipc	ra,0x3
    80001f44:	bdc080e7          	jalr	-1060(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001f48:	0014849b          	addiw	s1,s1,1
    80001f4c:	0ff4f493          	andi	s1,s1,255
    80001f50:	00200793          	li	a5,2
    80001f54:	0097e663          	bltu	a5,s1,80001f60 <_Z15workerBodyDjapePv+0x84>
        if (ind) time_sleep(10);
    80001f58:	fa090ae3          	beqz	s2,80001f0c <_Z15workerBodyDjapePv+0x30>
    80001f5c:	fa5ff06f          	j	80001f00 <_Z15workerBodyDjapePv+0x24>
    printString("A: yield\n");
    80001f60:	00006517          	auipc	a0,0x6
    80001f64:	0e850513          	addi	a0,a0,232 # 80008048 <CONSOLE_STATUS+0x38>
    80001f68:	00003097          	auipc	ra,0x3
    80001f6c:	bb4080e7          	jalr	-1100(ra) # 80004b1c <_Z11printStringPKc>
    asm volatile ("li t1, 7");
    80001f70:	00700313          	li	t1,7
    thread_dispatch();
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	b84080e7          	jalr	-1148(ra) # 80001af8 <_Z15thread_dispatchv>
    asm volatile ("mv %[t1], t1" : [t1] "=r"(t1));
    80001f7c:	00030913          	mv	s2,t1
    printString("A: t1=");
    80001f80:	00006517          	auipc	a0,0x6
    80001f84:	0d850513          	addi	a0,a0,216 # 80008058 <CONSOLE_STATUS+0x48>
    80001f88:	00003097          	auipc	ra,0x3
    80001f8c:	b94080e7          	jalr	-1132(ra) # 80004b1c <_Z11printStringPKc>
    printInt(t1);
    80001f90:	00000613          	li	a2,0
    80001f94:	00a00593          	li	a1,10
    80001f98:	0009051b          	sext.w	a0,s2
    80001f9c:	00003097          	auipc	ra,0x3
    80001fa0:	d18080e7          	jalr	-744(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    80001fa4:	00006517          	auipc	a0,0x6
    80001fa8:	28c50513          	addi	a0,a0,652 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001fac:	00003097          	auipc	ra,0x3
    80001fb0:	b70080e7          	jalr	-1168(ra) # 80004b1c <_Z11printStringPKc>
    uint64 result = fibonacciSone(20);
    80001fb4:	01400513          	li	a0,20
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	eb4080e7          	jalr	-332(ra) # 80001e6c <_Z13fibonacciSonem>
    80001fc0:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001fc4:	00006517          	auipc	a0,0x6
    80001fc8:	09c50513          	addi	a0,a0,156 # 80008060 <CONSOLE_STATUS+0x50>
    80001fcc:	00003097          	auipc	ra,0x3
    80001fd0:	b50080e7          	jalr	-1200(ra) # 80004b1c <_Z11printStringPKc>
    printInt(result);
    80001fd4:	00000613          	li	a2,0
    80001fd8:	00a00593          	li	a1,10
    80001fdc:	0009051b          	sext.w	a0,s2
    80001fe0:	00003097          	auipc	ra,0x3
    80001fe4:	cd4080e7          	jalr	-812(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    80001fe8:	00006517          	auipc	a0,0x6
    80001fec:	24850513          	addi	a0,a0,584 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80001ff0:	00003097          	auipc	ra,0x3
    80001ff4:	b2c080e7          	jalr	-1236(ra) # 80004b1c <_Z11printStringPKc>
    80001ff8:	0600006f          	j	80002058 <_Z15workerBodyDjapePv+0x17c>
        thread_exit();
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	ad8080e7          	jalr	-1320(ra) # 80001ad4 <_Z11thread_exitv>
        thread_dispatch();
    80002004:	00000097          	auipc	ra,0x0
    80002008:	af4080e7          	jalr	-1292(ra) # 80001af8 <_Z15thread_dispatchv>
        printString("A promenio\n");
    8000200c:	00006517          	auipc	a0,0x6
    80002010:	06450513          	addi	a0,a0,100 # 80008070 <CONSOLE_STATUS+0x60>
    80002014:	00003097          	auipc	ra,0x3
    80002018:	b08080e7          	jalr	-1272(ra) # 80004b1c <_Z11printStringPKc>
        printString("A: i=");
    8000201c:	00006517          	auipc	a0,0x6
    80002020:	00450513          	addi	a0,a0,4 # 80008020 <CONSOLE_STATUS+0x10>
    80002024:	00003097          	auipc	ra,0x3
    80002028:	af8080e7          	jalr	-1288(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    8000202c:	00000613          	li	a2,0
    80002030:	00a00593          	li	a1,10
    80002034:	00048513          	mv	a0,s1
    80002038:	00003097          	auipc	ra,0x3
    8000203c:	c7c080e7          	jalr	-900(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80002040:	00006517          	auipc	a0,0x6
    80002044:	1f050513          	addi	a0,a0,496 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002048:	00003097          	auipc	ra,0x3
    8000204c:	ad4080e7          	jalr	-1324(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002050:	0014849b          	addiw	s1,s1,1
    80002054:	0ff4f493          	andi	s1,s1,255
    80002058:	00500793          	li	a5,5
    8000205c:	fa97f0e3          	bgeu	a5,s1,80001ffc <_Z15workerBodyDjapePv+0x120>
    printString("A zavrsio\n");
    80002060:	00006517          	auipc	a0,0x6
    80002064:	02050513          	addi	a0,a0,32 # 80008080 <CONSOLE_STATUS+0x70>
    80002068:	00003097          	auipc	ra,0x3
    8000206c:	ab4080e7          	jalr	-1356(ra) # 80004b1c <_Z11printStringPKc>
}
    80002070:	01813083          	ld	ra,24(sp)
    80002074:	01013403          	ld	s0,16(sp)
    80002078:	00813483          	ld	s1,8(sp)
    8000207c:	00013903          	ld	s2,0(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_Z14workerBodyComiPv>:
void workerBodyComi(void* arg) {
    80002088:	fe010113          	addi	sp,sp,-32
    8000208c:	00113c23          	sd	ra,24(sp)
    80002090:	00813823          	sd	s0,16(sp)
    80002094:	00913423          	sd	s1,8(sp)
    80002098:	01213023          	sd	s2,0(sp)
    8000209c:	02010413          	addi	s0,sp,32
    int ind = *(int*)arg;
    800020a0:	00052903          	lw	s2,0(a0)
    uint8 i = 10;
    800020a4:	00a00493          	li	s1,10
    800020a8:	0540006f          	j	800020fc <_Z14workerBodyComiPv+0x74>
        if (ind) time_sleep(10);
    800020ac:	00a00513          	li	a0,10
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	b38080e7          	jalr	-1224(ra) # 80001be8 <_Z10time_sleepm>
        thread_exit();
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	a1c080e7          	jalr	-1508(ra) # 80001ad4 <_Z11thread_exitv>
        printString("B: i=");
    800020c0:	00006517          	auipc	a0,0x6
    800020c4:	f6850513          	addi	a0,a0,-152 # 80008028 <CONSOLE_STATUS+0x18>
    800020c8:	00003097          	auipc	ra,0x3
    800020cc:	a54080e7          	jalr	-1452(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    800020d0:	00000613          	li	a2,0
    800020d4:	00a00593          	li	a1,10
    800020d8:	00048513          	mv	a0,s1
    800020dc:	00003097          	auipc	ra,0x3
    800020e0:	bd8080e7          	jalr	-1064(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    800020e4:	00006517          	auipc	a0,0x6
    800020e8:	14c50513          	addi	a0,a0,332 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    800020ec:	00003097          	auipc	ra,0x3
    800020f0:	a30080e7          	jalr	-1488(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800020f4:	0014849b          	addiw	s1,s1,1
    800020f8:	0ff4f493          	andi	s1,s1,255
    800020fc:	00c00793          	li	a5,12
    80002100:	0097e663          	bltu	a5,s1,8000210c <_Z14workerBodyComiPv+0x84>
        if (ind) time_sleep(10);
    80002104:	fa090ae3          	beqz	s2,800020b8 <_Z14workerBodyComiPv+0x30>
    80002108:	fa5ff06f          	j	800020ac <_Z14workerBodyComiPv+0x24>
    printString("B: yield\n");
    8000210c:	00006517          	auipc	a0,0x6
    80002110:	f8450513          	addi	a0,a0,-124 # 80008090 <CONSOLE_STATUS+0x80>
    80002114:	00003097          	auipc	ra,0x3
    80002118:	a08080e7          	jalr	-1528(ra) # 80004b1c <_Z11printStringPKc>
    asm volatile ("li t1, 5");
    8000211c:	00500313          	li	t1,5
    thread_dispatch();
    80002120:	00000097          	auipc	ra,0x0
    80002124:	9d8080e7          	jalr	-1576(ra) # 80001af8 <_Z15thread_dispatchv>
    uint64 result = fibonacciSone(23);
    80002128:	01700513          	li	a0,23
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	d40080e7          	jalr	-704(ra) # 80001e6c <_Z13fibonacciSonem>
    80002134:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80002138:	00006517          	auipc	a0,0x6
    8000213c:	f6850513          	addi	a0,a0,-152 # 800080a0 <CONSOLE_STATUS+0x90>
    80002140:	00003097          	auipc	ra,0x3
    80002144:	9dc080e7          	jalr	-1572(ra) # 80004b1c <_Z11printStringPKc>
    printInt(result);
    80002148:	00000613          	li	a2,0
    8000214c:	00a00593          	li	a1,10
    80002150:	0009051b          	sext.w	a0,s2
    80002154:	00003097          	auipc	ra,0x3
    80002158:	b60080e7          	jalr	-1184(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    8000215c:	00006517          	auipc	a0,0x6
    80002160:	0d450513          	addi	a0,a0,212 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002164:	00003097          	auipc	ra,0x3
    80002168:	9b8080e7          	jalr	-1608(ra) # 80004b1c <_Z11printStringPKc>
    8000216c:	0600006f          	j	800021cc <_Z14workerBodyComiPv+0x144>
        thread_exit();
    80002170:	00000097          	auipc	ra,0x0
    80002174:	964080e7          	jalr	-1692(ra) # 80001ad4 <_Z11thread_exitv>
        thread_dispatch();
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	980080e7          	jalr	-1664(ra) # 80001af8 <_Z15thread_dispatchv>
        printString("B promenio\n");
    80002180:	00006517          	auipc	a0,0x6
    80002184:	f3050513          	addi	a0,a0,-208 # 800080b0 <CONSOLE_STATUS+0xa0>
    80002188:	00003097          	auipc	ra,0x3
    8000218c:	994080e7          	jalr	-1644(ra) # 80004b1c <_Z11printStringPKc>
        printString("B: i=");
    80002190:	00006517          	auipc	a0,0x6
    80002194:	e9850513          	addi	a0,a0,-360 # 80008028 <CONSOLE_STATUS+0x18>
    80002198:	00003097          	auipc	ra,0x3
    8000219c:	984080e7          	jalr	-1660(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    800021a0:	00000613          	li	a2,0
    800021a4:	00a00593          	li	a1,10
    800021a8:	00048513          	mv	a0,s1
    800021ac:	00003097          	auipc	ra,0x3
    800021b0:	b08080e7          	jalr	-1272(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    800021b4:	00006517          	auipc	a0,0x6
    800021b8:	07c50513          	addi	a0,a0,124 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    800021bc:	00003097          	auipc	ra,0x3
    800021c0:	960080e7          	jalr	-1696(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800021c4:	0014849b          	addiw	s1,s1,1
    800021c8:	0ff4f493          	andi	s1,s1,255
    800021cc:	00f00793          	li	a5,15
    800021d0:	fa97f0e3          	bgeu	a5,s1,80002170 <_Z14workerBodyComiPv+0xe8>
    printString("B zavrsio\n");
    800021d4:	00006517          	auipc	a0,0x6
    800021d8:	eec50513          	addi	a0,a0,-276 # 800080c0 <CONSOLE_STATUS+0xb0>
    800021dc:	00003097          	auipc	ra,0x3
    800021e0:	940080e7          	jalr	-1728(ra) # 80004b1c <_Z11printStringPKc>
}
    800021e4:	01813083          	ld	ra,24(sp)
    800021e8:	01013403          	ld	s0,16(sp)
    800021ec:	00813483          	ld	s1,8(sp)
    800021f0:	00013903          	ld	s2,0(sp)
    800021f4:	02010113          	addi	sp,sp,32
    800021f8:	00008067          	ret

00000000800021fc <_Z16test_thread_syncv>:
void test_thread_sync() {
    800021fc:	fc010113          	addi	sp,sp,-64
    80002200:	02113c23          	sd	ra,56(sp)
    80002204:	02813823          	sd	s0,48(sp)
    80002208:	02913423          	sd	s1,40(sp)
    8000220c:	03213023          	sd	s2,32(sp)
    80002210:	04010413          	addi	s0,sp,64
    int ind = 0;
    80002214:	fc042623          	sw	zero,-52(s0)
    thread_create(&threads[0], &workerBodyDjape, &ind);
    80002218:	fcc40493          	addi	s1,s0,-52
    8000221c:	00048613          	mv	a2,s1
    80002220:	00000597          	auipc	a1,0x0
    80002224:	cbc58593          	addi	a1,a1,-836 # 80001edc <_Z15workerBodyDjapePv>
    80002228:	fd040513          	addi	a0,s0,-48
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	814080e7          	jalr	-2028(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadA created\n");
    80002234:	00006517          	auipc	a0,0x6
    80002238:	e9c50513          	addi	a0,a0,-356 # 800080d0 <CONSOLE_STATUS+0xc0>
    8000223c:	00003097          	auipc	ra,0x3
    80002240:	8e0080e7          	jalr	-1824(ra) # 80004b1c <_Z11printStringPKc>
    thread_create(&threads[1], &workerBodyComi, &ind);
    80002244:	00048613          	mv	a2,s1
    80002248:	00000597          	auipc	a1,0x0
    8000224c:	e4058593          	addi	a1,a1,-448 # 80002088 <_Z14workerBodyComiPv>
    80002250:	fd840513          	addi	a0,s0,-40
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	7ec080e7          	jalr	2028(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadB created\n");
    8000225c:	00006517          	auipc	a0,0x6
    80002260:	e8c50513          	addi	a0,a0,-372 # 800080e8 <CONSOLE_STATUS+0xd8>
    80002264:	00003097          	auipc	ra,0x3
    80002268:	8b8080e7          	jalr	-1864(ra) # 80004b1c <_Z11printStringPKc>
    while (KPCB::counter) KPCB::yield();
    8000226c:	00008797          	auipc	a5,0x8
    80002270:	c6c7b783          	ld	a5,-916(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002274:	0007a783          	lw	a5,0(a5)
    80002278:	00078863          	beqz	a5,80002288 <_Z16test_thread_syncv+0x8c>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	d6c080e7          	jalr	-660(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    80002284:	fe9ff06f          	j	8000226c <_Z16test_thread_syncv+0x70>
    for (auto& thr: threads) delete thr;
    80002288:	fd040493          	addi	s1,s0,-48
    8000228c:	0140006f          	j	800022a0 <_Z16test_thread_syncv+0xa4>
        KMemoryAllocator::mem_free(addr);
    80002290:	00090513          	mv	a0,s2
    80002294:	00002097          	auipc	ra,0x2
    80002298:	518080e7          	jalr	1304(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    8000229c:	00848493          	addi	s1,s1,8
    800022a0:	fe040793          	addi	a5,s0,-32
    800022a4:	02f48063          	beq	s1,a5,800022c4 <_Z16test_thread_syncv+0xc8>
    800022a8:	0004b903          	ld	s2,0(s1)
    800022ac:	fe0908e3          	beqz	s2,8000229c <_Z16test_thread_syncv+0xa0>
    ~KPCB() { delete[] stack; }
    800022b0:	01893503          	ld	a0,24(s2)
    800022b4:	fc050ee3          	beqz	a0,80002290 <_Z16test_thread_syncv+0x94>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	3c0080e7          	jalr	960(ra) # 80003678 <_ZdaPv>
    800022c0:	fd1ff06f          	j	80002290 <_Z16test_thread_syncv+0x94>
    printString("Finished\n");
    800022c4:	00006517          	auipc	a0,0x6
    800022c8:	e3c50513          	addi	a0,a0,-452 # 80008100 <CONSOLE_STATUS+0xf0>
    800022cc:	00003097          	auipc	ra,0x3
    800022d0:	850080e7          	jalr	-1968(ra) # 80004b1c <_Z11printStringPKc>
}
    800022d4:	03813083          	ld	ra,56(sp)
    800022d8:	03013403          	ld	s0,48(sp)
    800022dc:	02813483          	ld	s1,40(sp)
    800022e0:	02013903          	ld	s2,32(sp)
    800022e4:	04010113          	addi	sp,sp,64
    800022e8:	00008067          	ret

00000000800022ec <_Z15fibonacciDraganm>:
uint64 fibonacciDragan(uint64 n) {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	01213023          	sd	s2,0(sp)
    80002300:	02010413          	addi	s0,sp,32
    80002304:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002308:	00100793          	li	a5,1
    8000230c:	02a7f863          	bgeu	a5,a0,8000233c <_Z15fibonacciDraganm+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002310:	00a00793          	li	a5,10
    80002314:	02f577b3          	remu	a5,a0,a5
    80002318:	02078e63          	beqz	a5,80002354 <_Z15fibonacciDraganm+0x68>
    return fibonacciDragan(n - 1) + fibonacciDragan(n - 2);
    8000231c:	fff48513          	addi	a0,s1,-1
    80002320:	00000097          	auipc	ra,0x0
    80002324:	fcc080e7          	jalr	-52(ra) # 800022ec <_Z15fibonacciDraganm>
    80002328:	00050913          	mv	s2,a0
    8000232c:	ffe48513          	addi	a0,s1,-2
    80002330:	00000097          	auipc	ra,0x0
    80002334:	fbc080e7          	jalr	-68(ra) # 800022ec <_Z15fibonacciDraganm>
    80002338:	00a90533          	add	a0,s2,a0
}
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	00013903          	ld	s2,0(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	7a4080e7          	jalr	1956(ra) # 80001af8 <_Z15thread_dispatchv>
    8000235c:	fc1ff06f          	j	8000231c <_Z15fibonacciDraganm+0x30>

0000000080002360 <_Z17workerBodySlavicaPv>:
void workerBodySlavica(void* arg) {
    80002360:	fe010113          	addi	sp,sp,-32
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	01213023          	sd	s2,0(sp)
    80002374:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002378:	00000493          	li	s1,0
    8000237c:	0400006f          	j	800023bc <_Z17workerBodySlavicaPv+0x5c>
        printString("C: i=");
    80002380:	00006517          	auipc	a0,0x6
    80002384:	d9050513          	addi	a0,a0,-624 # 80008110 <CONSOLE_STATUS+0x100>
    80002388:	00002097          	auipc	ra,0x2
    8000238c:	794080e7          	jalr	1940(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80002390:	00000613          	li	a2,0
    80002394:	00a00593          	li	a1,10
    80002398:	00048513          	mv	a0,s1
    8000239c:	00003097          	auipc	ra,0x3
    800023a0:	918080e7          	jalr	-1768(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    800023a4:	00006517          	auipc	a0,0x6
    800023a8:	e8c50513          	addi	a0,a0,-372 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    800023ac:	00002097          	auipc	ra,0x2
    800023b0:	770080e7          	jalr	1904(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800023b4:	0014849b          	addiw	s1,s1,1
    800023b8:	0ff4f493          	andi	s1,s1,255
    800023bc:	00200793          	li	a5,2
    800023c0:	fc97f0e3          	bgeu	a5,s1,80002380 <_Z17workerBodySlavicaPv+0x20>
    printString("C: yield\n");
    800023c4:	00006517          	auipc	a0,0x6
    800023c8:	d5450513          	addi	a0,a0,-684 # 80008118 <CONSOLE_STATUS+0x108>
    800023cc:	00002097          	auipc	ra,0x2
    800023d0:	750080e7          	jalr	1872(ra) # 80004b1c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800023d4:	00700313          	li	t1,7
    thread_dispatch();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	720080e7          	jalr	1824(ra) # 80001af8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800023e0:	00030913          	mv	s2,t1
    printString("C: t1=");
    800023e4:	00006517          	auipc	a0,0x6
    800023e8:	d4450513          	addi	a0,a0,-700 # 80008128 <CONSOLE_STATUS+0x118>
    800023ec:	00002097          	auipc	ra,0x2
    800023f0:	730080e7          	jalr	1840(ra) # 80004b1c <_Z11printStringPKc>
    printInt(t1);
    800023f4:	00000613          	li	a2,0
    800023f8:	00a00593          	li	a1,10
    800023fc:	0009051b          	sext.w	a0,s2
    80002400:	00003097          	auipc	ra,0x3
    80002404:	8b4080e7          	jalr	-1868(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    80002408:	00006517          	auipc	a0,0x6
    8000240c:	e2850513          	addi	a0,a0,-472 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002410:	00002097          	auipc	ra,0x2
    80002414:	70c080e7          	jalr	1804(ra) # 80004b1c <_Z11printStringPKc>
    uint64 result = fibonacciDragan(12);
    80002418:	00c00513          	li	a0,12
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	ed0080e7          	jalr	-304(ra) # 800022ec <_Z15fibonacciDraganm>
    80002424:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80002428:	00006517          	auipc	a0,0x6
    8000242c:	d0850513          	addi	a0,a0,-760 # 80008130 <CONSOLE_STATUS+0x120>
    80002430:	00002097          	auipc	ra,0x2
    80002434:	6ec080e7          	jalr	1772(ra) # 80004b1c <_Z11printStringPKc>
    printInt(result);
    80002438:	00000613          	li	a2,0
    8000243c:	00a00593          	li	a1,10
    80002440:	0009051b          	sext.w	a0,s2
    80002444:	00003097          	auipc	ra,0x3
    80002448:	870080e7          	jalr	-1936(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    8000244c:	00006517          	auipc	a0,0x6
    80002450:	de450513          	addi	a0,a0,-540 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002454:	00002097          	auipc	ra,0x2
    80002458:	6c8080e7          	jalr	1736(ra) # 80004b1c <_Z11printStringPKc>
    8000245c:	0400006f          	j	8000249c <_Z17workerBodySlavicaPv+0x13c>
        printString("C: i=");
    80002460:	00006517          	auipc	a0,0x6
    80002464:	cb050513          	addi	a0,a0,-848 # 80008110 <CONSOLE_STATUS+0x100>
    80002468:	00002097          	auipc	ra,0x2
    8000246c:	6b4080e7          	jalr	1716(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80002470:	00000613          	li	a2,0
    80002474:	00a00593          	li	a1,10
    80002478:	00048513          	mv	a0,s1
    8000247c:	00003097          	auipc	ra,0x3
    80002480:	838080e7          	jalr	-1992(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80002484:	00006517          	auipc	a0,0x6
    80002488:	dac50513          	addi	a0,a0,-596 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    8000248c:	00002097          	auipc	ra,0x2
    80002490:	690080e7          	jalr	1680(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002494:	0014849b          	addiw	s1,s1,1
    80002498:	0ff4f493          	andi	s1,s1,255
    8000249c:	00500793          	li	a5,5
    800024a0:	fc97f0e3          	bgeu	a5,s1,80002460 <_Z17workerBodySlavicaPv+0x100>
}
    800024a4:	01813083          	ld	ra,24(sp)
    800024a8:	01013403          	ld	s0,16(sp)
    800024ac:	00813483          	ld	s1,8(sp)
    800024b0:	00013903          	ld	s2,0(sp)
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00008067          	ret

00000000800024bc <_Z15workerBodyRankoPv>:
void workerBodyRanko(void* arg) {
    800024bc:	fe010113          	addi	sp,sp,-32
    800024c0:	00113c23          	sd	ra,24(sp)
    800024c4:	00813823          	sd	s0,16(sp)
    800024c8:	00913423          	sd	s1,8(sp)
    800024cc:	01213023          	sd	s2,0(sp)
    800024d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800024d4:	00a00493          	li	s1,10
    800024d8:	0400006f          	j	80002518 <_Z15workerBodyRankoPv+0x5c>
        printString("D: i=");
    800024dc:	00006517          	auipc	a0,0x6
    800024e0:	c6450513          	addi	a0,a0,-924 # 80008140 <CONSOLE_STATUS+0x130>
    800024e4:	00002097          	auipc	ra,0x2
    800024e8:	638080e7          	jalr	1592(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    800024ec:	00000613          	li	a2,0
    800024f0:	00a00593          	li	a1,10
    800024f4:	00048513          	mv	a0,s1
    800024f8:	00002097          	auipc	ra,0x2
    800024fc:	7bc080e7          	jalr	1980(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    80002500:	00006517          	auipc	a0,0x6
    80002504:	d3050513          	addi	a0,a0,-720 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002508:	00002097          	auipc	ra,0x2
    8000250c:	614080e7          	jalr	1556(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002510:	0014849b          	addiw	s1,s1,1
    80002514:	0ff4f493          	andi	s1,s1,255
    80002518:	00c00793          	li	a5,12
    8000251c:	fc97f0e3          	bgeu	a5,s1,800024dc <_Z15workerBodyRankoPv+0x20>
    printString("D: yield\n");
    80002520:	00006517          	auipc	a0,0x6
    80002524:	c2850513          	addi	a0,a0,-984 # 80008148 <CONSOLE_STATUS+0x138>
    80002528:	00002097          	auipc	ra,0x2
    8000252c:	5f4080e7          	jalr	1524(ra) # 80004b1c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002530:	00500313          	li	t1,5
    thread_dispatch();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	5c4080e7          	jalr	1476(ra) # 80001af8 <_Z15thread_dispatchv>
    uint64 result = fibonacciDragan(16);
    8000253c:	01000513          	li	a0,16
    80002540:	00000097          	auipc	ra,0x0
    80002544:	dac080e7          	jalr	-596(ra) # 800022ec <_Z15fibonacciDraganm>
    80002548:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000254c:	00006517          	auipc	a0,0x6
    80002550:	c0c50513          	addi	a0,a0,-1012 # 80008158 <CONSOLE_STATUS+0x148>
    80002554:	00002097          	auipc	ra,0x2
    80002558:	5c8080e7          	jalr	1480(ra) # 80004b1c <_Z11printStringPKc>
    printInt(result);
    8000255c:	00000613          	li	a2,0
    80002560:	00a00593          	li	a1,10
    80002564:	0009051b          	sext.w	a0,s2
    80002568:	00002097          	auipc	ra,0x2
    8000256c:	74c080e7          	jalr	1868(ra) # 80004cb4 <_Z8printIntiii>
    printString("\n");
    80002570:	00006517          	auipc	a0,0x6
    80002574:	cc050513          	addi	a0,a0,-832 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80002578:	00002097          	auipc	ra,0x2
    8000257c:	5a4080e7          	jalr	1444(ra) # 80004b1c <_Z11printStringPKc>
    80002580:	0400006f          	j	800025c0 <_Z15workerBodyRankoPv+0x104>
        printString("D: i=");
    80002584:	00006517          	auipc	a0,0x6
    80002588:	bbc50513          	addi	a0,a0,-1092 # 80008140 <CONSOLE_STATUS+0x130>
    8000258c:	00002097          	auipc	ra,0x2
    80002590:	590080e7          	jalr	1424(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    80002594:	00000613          	li	a2,0
    80002598:	00a00593          	li	a1,10
    8000259c:	00048513          	mv	a0,s1
    800025a0:	00002097          	auipc	ra,0x2
    800025a4:	714080e7          	jalr	1812(ra) # 80004cb4 <_Z8printIntiii>
        printString("\n");
    800025a8:	00006517          	auipc	a0,0x6
    800025ac:	c8850513          	addi	a0,a0,-888 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    800025b0:	00002097          	auipc	ra,0x2
    800025b4:	56c080e7          	jalr	1388(ra) # 80004b1c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800025b8:	0014849b          	addiw	s1,s1,1
    800025bc:	0ff4f493          	andi	s1,s1,255
    800025c0:	00f00793          	li	a5,15
    800025c4:	fc97f0e3          	bgeu	a5,s1,80002584 <_Z15workerBodyRankoPv+0xc8>
}
    800025c8:	01813083          	ld	ra,24(sp)
    800025cc:	01013403          	ld	s0,16(sp)
    800025d0:	00813483          	ld	s1,8(sp)
    800025d4:	00013903          	ld	s2,0(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_Z17test_thread_asyncv>:
void test_thread_async() {
    800025e0:	fc010113          	addi	sp,sp,-64
    800025e4:	02113c23          	sd	ra,56(sp)
    800025e8:	02813823          	sd	s0,48(sp)
    800025ec:	02913423          	sd	s1,40(sp)
    800025f0:	03213023          	sd	s2,32(sp)
    800025f4:	04010413          	addi	s0,sp,64
    thread_create(&threads[0], &workerBodyPedja, nullptr);
    800025f8:	00000613          	li	a2,0
    800025fc:	fffff597          	auipc	a1,0xfffff
    80002600:	66058593          	addi	a1,a1,1632 # 80001c5c <_Z15workerBodyPedjaPv>
    80002604:	fc040513          	addi	a0,s0,-64
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	438080e7          	jalr	1080(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadA created\n");
    80002610:	00006517          	auipc	a0,0x6
    80002614:	ac050513          	addi	a0,a0,-1344 # 800080d0 <CONSOLE_STATUS+0xc0>
    80002618:	00002097          	auipc	ra,0x2
    8000261c:	504080e7          	jalr	1284(ra) # 80004b1c <_Z11printStringPKc>
    thread_create(&threads[1], &workerBodyMilica, nullptr);
    80002620:	00000613          	li	a2,0
    80002624:	fffff597          	auipc	a1,0xfffff
    80002628:	6d058593          	addi	a1,a1,1744 # 80001cf4 <_Z16workerBodyMilicaPv>
    8000262c:	fc840513          	addi	a0,s0,-56
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	410080e7          	jalr	1040(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadB created\n");
    80002638:	00006517          	auipc	a0,0x6
    8000263c:	ab050513          	addi	a0,a0,-1360 # 800080e8 <CONSOLE_STATUS+0xd8>
    80002640:	00002097          	auipc	ra,0x2
    80002644:	4dc080e7          	jalr	1244(ra) # 80004b1c <_Z11printStringPKc>
    thread_create(&threads[2], &workerBodySlavica, nullptr);
    80002648:	00000613          	li	a2,0
    8000264c:	00000597          	auipc	a1,0x0
    80002650:	d1458593          	addi	a1,a1,-748 # 80002360 <_Z17workerBodySlavicaPv>
    80002654:	fd040513          	addi	a0,s0,-48
    80002658:	fffff097          	auipc	ra,0xfffff
    8000265c:	3e8080e7          	jalr	1000(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadC created\n");
    80002660:	00006517          	auipc	a0,0x6
    80002664:	b0850513          	addi	a0,a0,-1272 # 80008168 <CONSOLE_STATUS+0x158>
    80002668:	00002097          	auipc	ra,0x2
    8000266c:	4b4080e7          	jalr	1204(ra) # 80004b1c <_Z11printStringPKc>
    thread_create(&threads[3], &workerBodyRanko, nullptr);
    80002670:	00000613          	li	a2,0
    80002674:	00000597          	auipc	a1,0x0
    80002678:	e4858593          	addi	a1,a1,-440 # 800024bc <_Z15workerBodyRankoPv>
    8000267c:	fd840513          	addi	a0,s0,-40
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	3c0080e7          	jalr	960(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadD created\n");
    80002688:	00006517          	auipc	a0,0x6
    8000268c:	af850513          	addi	a0,a0,-1288 # 80008180 <CONSOLE_STATUS+0x170>
    80002690:	00002097          	auipc	ra,0x2
    80002694:	48c080e7          	jalr	1164(ra) # 80004b1c <_Z11printStringPKc>
    while (KPCB::counter) KPCB::yield();
    80002698:	00008797          	auipc	a5,0x8
    8000269c:	8407b783          	ld	a5,-1984(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800026a0:	0007a783          	lw	a5,0(a5)
    800026a4:	00078863          	beqz	a5,800026b4 <_Z17test_thread_asyncv+0xd4>
    800026a8:	00001097          	auipc	ra,0x1
    800026ac:	940080e7          	jalr	-1728(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    800026b0:	fe9ff06f          	j	80002698 <_Z17test_thread_asyncv+0xb8>
    for (auto& thr: threads) delete thr;
    800026b4:	fc040493          	addi	s1,s0,-64
    800026b8:	01c0006f          	j	800026d4 <_Z17test_thread_asyncv+0xf4>
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	fbc080e7          	jalr	-68(ra) # 80003678 <_ZdaPv>
        KMemoryAllocator::mem_free(addr);
    800026c4:	00090513          	mv	a0,s2
    800026c8:	00002097          	auipc	ra,0x2
    800026cc:	0e4080e7          	jalr	228(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    800026d0:	00848493          	addi	s1,s1,8
    800026d4:	fe040793          	addi	a5,s0,-32
    800026d8:	00f48c63          	beq	s1,a5,800026f0 <_Z17test_thread_asyncv+0x110>
    800026dc:	0004b903          	ld	s2,0(s1)
    800026e0:	fe0908e3          	beqz	s2,800026d0 <_Z17test_thread_asyncv+0xf0>
    ~KPCB() { delete[] stack; }
    800026e4:	01893503          	ld	a0,24(s2)
    800026e8:	fc051ae3          	bnez	a0,800026bc <_Z17test_thread_asyncv+0xdc>
    800026ec:	fd9ff06f          	j	800026c4 <_Z17test_thread_asyncv+0xe4>
    printString("Finished\n");
    800026f0:	00006517          	auipc	a0,0x6
    800026f4:	a1050513          	addi	a0,a0,-1520 # 80008100 <CONSOLE_STATUS+0xf0>
    800026f8:	00002097          	auipc	ra,0x2
    800026fc:	424080e7          	jalr	1060(ra) # 80004b1c <_Z11printStringPKc>
}
    80002700:	03813083          	ld	ra,56(sp)
    80002704:	03013403          	ld	s0,48(sp)
    80002708:	02813483          	ld	s1,40(sp)
    8000270c:	02013903          	ld	s2,32(sp)
    80002710:	04010113          	addi	sp,sp,64
    80002714:	00008067          	ret

0000000080002718 <_Z22test_thread_sync_sleepv>:
void test_thread_sync_sleep() {
    80002718:	fc010113          	addi	sp,sp,-64
    8000271c:	02113c23          	sd	ra,56(sp)
    80002720:	02813823          	sd	s0,48(sp)
    80002724:	02913423          	sd	s1,40(sp)
    80002728:	03213023          	sd	s2,32(sp)
    8000272c:	04010413          	addi	s0,sp,64
    int ind = 1;
    80002730:	00100793          	li	a5,1
    80002734:	fcf42623          	sw	a5,-52(s0)
    thread_create(&threads[0], &workerBodyDjape, &ind);
    80002738:	fcc40493          	addi	s1,s0,-52
    8000273c:	00048613          	mv	a2,s1
    80002740:	fffff597          	auipc	a1,0xfffff
    80002744:	79c58593          	addi	a1,a1,1948 # 80001edc <_Z15workerBodyDjapePv>
    80002748:	fd040513          	addi	a0,s0,-48
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	2f4080e7          	jalr	756(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadA created\n");
    80002754:	00006517          	auipc	a0,0x6
    80002758:	97c50513          	addi	a0,a0,-1668 # 800080d0 <CONSOLE_STATUS+0xc0>
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	3c0080e7          	jalr	960(ra) # 80004b1c <_Z11printStringPKc>
    thread_create(&threads[1], &workerBodyComi, &ind);
    80002764:	00048613          	mv	a2,s1
    80002768:	00000597          	auipc	a1,0x0
    8000276c:	92058593          	addi	a1,a1,-1760 # 80002088 <_Z14workerBodyComiPv>
    80002770:	fd840513          	addi	a0,s0,-40
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	2cc080e7          	jalr	716(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    printString("ThreadB created\n");
    8000277c:	00006517          	auipc	a0,0x6
    80002780:	96c50513          	addi	a0,a0,-1684 # 800080e8 <CONSOLE_STATUS+0xd8>
    80002784:	00002097          	auipc	ra,0x2
    80002788:	398080e7          	jalr	920(ra) # 80004b1c <_Z11printStringPKc>
    while (KPCB::counter) KPCB::yield();
    8000278c:	00007797          	auipc	a5,0x7
    80002790:	74c7b783          	ld	a5,1868(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002794:	0007a783          	lw	a5,0(a5)
    80002798:	00078863          	beqz	a5,800027a8 <_Z22test_thread_sync_sleepv+0x90>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	84c080e7          	jalr	-1972(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    800027a4:	fe9ff06f          	j	8000278c <_Z22test_thread_sync_sleepv+0x74>
    for (auto& thr: threads) delete thr;
    800027a8:	fd040493          	addi	s1,s0,-48
    800027ac:	0140006f          	j	800027c0 <_Z22test_thread_sync_sleepv+0xa8>
        KMemoryAllocator::mem_free(addr);
    800027b0:	00090513          	mv	a0,s2
    800027b4:	00002097          	auipc	ra,0x2
    800027b8:	ff8080e7          	jalr	-8(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    800027bc:	00848493          	addi	s1,s1,8
    800027c0:	fe040793          	addi	a5,s0,-32
    800027c4:	02f48063          	beq	s1,a5,800027e4 <_Z22test_thread_sync_sleepv+0xcc>
    800027c8:	0004b903          	ld	s2,0(s1)
    800027cc:	fe0908e3          	beqz	s2,800027bc <_Z22test_thread_sync_sleepv+0xa4>
    ~KPCB() { delete[] stack; }
    800027d0:	01893503          	ld	a0,24(s2)
    800027d4:	fc050ee3          	beqz	a0,800027b0 <_Z22test_thread_sync_sleepv+0x98>
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	ea0080e7          	jalr	-352(ra) # 80003678 <_ZdaPv>
    800027e0:	fd1ff06f          	j	800027b0 <_Z22test_thread_sync_sleepv+0x98>
    printString("Finished\n");
    800027e4:	00006517          	auipc	a0,0x6
    800027e8:	91c50513          	addi	a0,a0,-1764 # 80008100 <CONSOLE_STATUS+0xf0>
    800027ec:	00002097          	auipc	ra,0x2
    800027f0:	330080e7          	jalr	816(ra) # 80004b1c <_Z11printStringPKc>
}
    800027f4:	03813083          	ld	ra,56(sp)
    800027f8:	03013403          	ld	s0,48(sp)
    800027fc:	02813483          	ld	s1,40(sp)
    80002800:	02013903          	ld	s2,32(sp)
    80002804:	04010113          	addi	sp,sp,64
    80002808:	00008067          	ret

000000008000280c <_Z20test_periodic_threadv>:
void test_periodic_thread() {
    8000280c:	fc010113          	addi	sp,sp,-64
    80002810:	02113c23          	sd	ra,56(sp)
    80002814:	02813823          	sd	s0,48(sp)
    80002818:	02913423          	sd	s1,40(sp)
    8000281c:	03213023          	sd	s2,32(sp)
    80002820:	04010413          	addi	s0,sp,64
    };

    MojaKlasa* m = new MojaKlasa(10, 1);
    80002824:	01800513          	li	a0,24
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	d58080e7          	jalr	-680(ra) # 80003580 <_Znwm>
    80002830:	00050493          	mv	s1,a0
        MojaKlasa(time_t t, int num) : PeriodicThread(t), num(num) {}
    80002834:	00a00593          	li	a1,10
    80002838:	00001097          	auipc	ra,0x1
    8000283c:	05c080e7          	jalr	92(ra) # 80003894 <_ZN14PeriodicThreadC1Em>
    80002840:	00007917          	auipc	s2,0x7
    80002844:	54890913          	addi	s2,s2,1352 # 80009d88 <_ZTVZ20test_periodic_threadvE9MojaKlasa+0x10>
    80002848:	0124b023          	sd	s2,0(s1)
    8000284c:	00100793          	li	a5,1
    80002850:	00f4a823          	sw	a5,16(s1)
    80002854:	01900593          	li	a1,25
    80002858:	fc840513          	addi	a0,s0,-56
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	038080e7          	jalr	56(ra) # 80003894 <_ZN14PeriodicThreadC1Em>
    80002864:	fd243423          	sd	s2,-56(s0)
    80002868:	00200793          	li	a5,2
    8000286c:	fcf42c23          	sw	a5,-40(s0)
    MojaKlasa p(25, 2);
    m->start();
    80002870:	00048513          	mv	a0,s1
    80002874:	00001097          	auipc	ra,0x1
    80002878:	e64080e7          	jalr	-412(ra) # 800036d8 <_ZN6Thread5startEv>
    p.start();
    8000287c:	fc840513          	addi	a0,s0,-56
    80002880:	00001097          	auipc	ra,0x1
    80002884:	e58080e7          	jalr	-424(ra) # 800036d8 <_ZN6Thread5startEv>
    while (KPCB::counter) KPCB::yield();
    80002888:	00007797          	auipc	a5,0x7
    8000288c:	6507b783          	ld	a5,1616(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002890:	0007a783          	lw	a5,0(a5)
    80002894:	00078863          	beqz	a5,800028a4 <_Z20test_periodic_threadv+0x98>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	750080e7          	jalr	1872(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    800028a0:	fe9ff06f          	j	80002888 <_Z20test_periodic_threadv+0x7c>
    delete m;
    800028a4:	00048a63          	beqz	s1,800028b8 <_Z20test_periodic_threadv+0xac>
    800028a8:	0004b783          	ld	a5,0(s1)
    800028ac:	0087b783          	ld	a5,8(a5)
    800028b0:	00048513          	mv	a0,s1
    800028b4:	000780e7          	jalr	a5
    printString("Finished\n");
    800028b8:	00006517          	auipc	a0,0x6
    800028bc:	84850513          	addi	a0,a0,-1976 # 80008100 <CONSOLE_STATUS+0xf0>
    800028c0:	00002097          	auipc	ra,0x2
    800028c4:	25c080e7          	jalr	604(ra) # 80004b1c <_Z11printStringPKc>
    800028c8:	00007797          	auipc	a5,0x7
    800028cc:	49078793          	addi	a5,a5,1168 # 80009d58 <_ZTV14PeriodicThread+0x10>
    800028d0:	fcf43423          	sd	a5,-56(s0)
    800028d4:	fc840513          	addi	a0,s0,-56
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	ba0080e7          	jalr	-1120(ra) # 80003478 <_ZN6ThreadD1Ev>
}
    800028e0:	03813083          	ld	ra,56(sp)
    800028e4:	03013403          	ld	s0,48(sp)
    800028e8:	02813483          	ld	s1,40(sp)
    800028ec:	02013903          	ld	s2,32(sp)
    800028f0:	04010113          	addi	sp,sp,64
    800028f4:	00008067          	ret
    800028f8:	00050913          	mv	s2,a0
    MojaKlasa* m = new MojaKlasa(10, 1);
    800028fc:	00048513          	mv	a0,s1
    80002900:	00001097          	auipc	ra,0x1
    80002904:	ca8080e7          	jalr	-856(ra) # 800035a8 <_ZdlPv>
    80002908:	00090513          	mv	a0,s2
    8000290c:	00008097          	auipc	ra,0x8
    80002910:	76c080e7          	jalr	1900(ra) # 8000b078 <_Unwind_Resume>
    80002914:	00050493          	mv	s1,a0
    80002918:	00007797          	auipc	a5,0x7
    8000291c:	44078793          	addi	a5,a5,1088 # 80009d58 <_ZTV14PeriodicThread+0x10>
    80002920:	fcf43423          	sd	a5,-56(s0)
    80002924:	fc840513          	addi	a0,s0,-56
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	b50080e7          	jalr	-1200(ra) # 80003478 <_ZN6ThreadD1Ev>
    80002930:	00048513          	mv	a0,s1
    80002934:	00008097          	auipc	ra,0x8
    80002938:	744080e7          	jalr	1860(ra) # 8000b078 <_Unwind_Resume>

000000008000293c <_Z11test_threadv>:

void test_thread() {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    test_thread_sync();
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	8b0080e7          	jalr	-1872(ra) # 800021fc <_Z16test_thread_syncv>
    test_thread_async();
    80002954:	00000097          	auipc	ra,0x0
    80002958:	c8c080e7          	jalr	-884(ra) # 800025e0 <_Z17test_thread_asyncv>
    //test_thread_sync_sleep();
    //test_periodic_thread();
    8000295c:	00813083          	ld	ra,8(sp)
    80002960:	00013403          	ld	s0,0(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <_ZN6Thread3runEv>:
    virtual void run () {}
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN14PeriodicThread18periodicActivationEv>:
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
    80002990:	00813403          	ld	s0,8(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
    800029ac:	00007797          	auipc	a5,0x7
    800029b0:	3ac78793          	addi	a5,a5,940 # 80009d58 <_ZTV14PeriodicThread+0x10>
    800029b4:	00f53023          	sd	a5,0(a0)
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	ac0080e7          	jalr	-1344(ra) # 80003478 <_ZN6ThreadD1Ev>
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret

00000000800029d0 <_ZN14PeriodicThreadD0Ev>:
    800029d0:	fe010113          	addi	sp,sp,-32
    800029d4:	00113c23          	sd	ra,24(sp)
    800029d8:	00813823          	sd	s0,16(sp)
    800029dc:	00913423          	sd	s1,8(sp)
    800029e0:	02010413          	addi	s0,sp,32
    800029e4:	00050493          	mv	s1,a0
    800029e8:	00007797          	auipc	a5,0x7
    800029ec:	37078793          	addi	a5,a5,880 # 80009d58 <_ZTV14PeriodicThread+0x10>
    800029f0:	00f53023          	sd	a5,0(a0)
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	a84080e7          	jalr	-1404(ra) # 80003478 <_ZN6ThreadD1Ev>
    800029fc:	00048513          	mv	a0,s1
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	ba8080e7          	jalr	-1112(ra) # 800035a8 <_ZdlPv>
    80002a08:	01813083          	ld	ra,24(sp)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	00813483          	ld	s1,8(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret

0000000080002a1c <_ZN8KConsoleC1Ei>:
#include "../h/KSemaphore.hpp"

KConsole* KConsole::inBuff = nullptr;
KConsole* KConsole::outBuff = nullptr;

KConsole::KConsole(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002a1c:	fe010113          	addi	sp,sp,-32
    80002a20:	00113c23          	sd	ra,24(sp)
    80002a24:	00813823          	sd	s0,16(sp)
    80002a28:	00913423          	sd	s1,8(sp)
    80002a2c:	01213023          	sd	s2,0(sp)
    80002a30:	02010413          	addi	s0,sp,32
    80002a34:	00050493          	mv	s1,a0
    80002a38:	00058913          	mv	s2,a1
    80002a3c:	0015871b          	addiw	a4,a1,1
    80002a40:	0007079b          	sext.w	a5,a4
    80002a44:	00e52023          	sw	a4,0(a0)
    80002a48:	00052823          	sw	zero,16(a0)
    80002a4c:	00052a23          	sw	zero,20(a0)
    size_t sizeBlock = (sizeof(char)*cap + 16) / MEM_BLOCK_SIZE + ((sizeof(char)*cap + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    80002a50:	01078793          	addi	a5,a5,16
    80002a54:	0067d513          	srli	a0,a5,0x6
    80002a58:	03f7f793          	andi	a5,a5,63
    80002a5c:	00078463          	beqz	a5,80002a64 <_ZN8KConsoleC1Ei+0x48>
    80002a60:	00100793          	li	a5,1
    buffer = (char*)KMemoryAllocator::mem_alloc(sizeBlock);
    80002a64:	00f50533          	add	a0,a0,a5
    80002a68:	00002097          	auipc	ra,0x2
    80002a6c:	c58080e7          	jalr	-936(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    80002a70:	00a4b423          	sd	a0,8(s1)
    itemAvailable = KSemaphore::createSemaphore(0);
    80002a74:	00000513          	li	a0,0
    80002a78:	00002097          	auipc	ra,0x2
    80002a7c:	060080e7          	jalr	96(ra) # 80004ad8 <_ZN10KSemaphore15createSemaphoreEm>
    80002a80:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = KSemaphore::createSemaphore(_cap);
    80002a84:	00090513          	mv	a0,s2
    80002a88:	00002097          	auipc	ra,0x2
    80002a8c:	050080e7          	jalr	80(ra) # 80004ad8 <_ZN10KSemaphore15createSemaphoreEm>
    80002a90:	00a4bc23          	sd	a0,24(s1)
    mutexHead = KSemaphore::createSemaphore(1);
    80002a94:	00100513          	li	a0,1
    80002a98:	00002097          	auipc	ra,0x2
    80002a9c:	040080e7          	jalr	64(ra) # 80004ad8 <_ZN10KSemaphore15createSemaphoreEm>
    80002aa0:	02a4b423          	sd	a0,40(s1)
    mutexTail = KSemaphore::createSemaphore(1);
    80002aa4:	00100513          	li	a0,1
    80002aa8:	00002097          	auipc	ra,0x2
    80002aac:	030080e7          	jalr	48(ra) # 80004ad8 <_ZN10KSemaphore15createSemaphoreEm>
    80002ab0:	02a4b823          	sd	a0,48(s1)
}
    80002ab4:	01813083          	ld	ra,24(sp)
    80002ab8:	01013403          	ld	s0,16(sp)
    80002abc:	00813483          	ld	s1,8(sp)
    80002ac0:	00013903          	ld	s2,0(sp)
    80002ac4:	02010113          	addi	sp,sp,32
    80002ac8:	00008067          	ret

0000000080002acc <_ZN8KConsoleD1Ev>:

KConsole::~KConsole() {
    80002acc:	fe010113          	addi	sp,sp,-32
    80002ad0:	00113c23          	sd	ra,24(sp)
    80002ad4:	00813823          	sd	s0,16(sp)
    80002ad8:	00913423          	sd	s1,8(sp)
    80002adc:	01213023          	sd	s2,0(sp)
    80002ae0:	02010413          	addi	s0,sp,32
    80002ae4:	00050913          	mv	s2,a0
    KMemoryAllocator::mem_free(buffer);
    80002ae8:	00853503          	ld	a0,8(a0)
    80002aec:	00002097          	auipc	ra,0x2
    80002af0:	cc0080e7          	jalr	-832(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    delete itemAvailable;
    80002af4:	02093483          	ld	s1,32(s2)
    80002af8:	02048e63          	beqz	s1,80002b34 <_ZN8KConsoleD1Ev+0x68>
        while (head) {
    80002afc:	0084b503          	ld	a0,8(s1)
    80002b00:	02050463          	beqz	a0,80002b28 <_ZN8KConsoleD1Ev+0x5c>
            head = head->nextSemaphore;
    80002b04:	04853783          	ld	a5,72(a0)
    80002b08:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80002b0c:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80002b10:	00100793          	li	a5,1
    80002b14:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80002b18:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	488080e7          	jalr	1160(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80002b24:	fd9ff06f          	j	80002afc <_ZN8KConsoleD1Ev+0x30>
        KMemoryAllocator::mem_free(addr);
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00002097          	auipc	ra,0x2
    80002b30:	c80080e7          	jalr	-896(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    delete spaceAvailable;
    80002b34:	01893483          	ld	s1,24(s2)
    80002b38:	02048e63          	beqz	s1,80002b74 <_ZN8KConsoleD1Ev+0xa8>
        while (head) {
    80002b3c:	0084b503          	ld	a0,8(s1)
    80002b40:	02050463          	beqz	a0,80002b68 <_ZN8KConsoleD1Ev+0x9c>
            head = head->nextSemaphore;
    80002b44:	04853783          	ld	a5,72(a0)
    80002b48:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80002b4c:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80002b50:	00100793          	li	a5,1
    80002b54:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80002b58:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	448080e7          	jalr	1096(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80002b64:	fd9ff06f          	j	80002b3c <_ZN8KConsoleD1Ev+0x70>
        KMemoryAllocator::mem_free(addr);
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	00002097          	auipc	ra,0x2
    80002b70:	c40080e7          	jalr	-960(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    delete mutexTail;
    80002b74:	03093483          	ld	s1,48(s2)
    80002b78:	02048e63          	beqz	s1,80002bb4 <_ZN8KConsoleD1Ev+0xe8>
        while (head) {
    80002b7c:	0084b503          	ld	a0,8(s1)
    80002b80:	02050463          	beqz	a0,80002ba8 <_ZN8KConsoleD1Ev+0xdc>
            head = head->nextSemaphore;
    80002b84:	04853783          	ld	a5,72(a0)
    80002b88:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80002b8c:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80002b90:	00100793          	li	a5,1
    80002b94:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80002b98:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	408080e7          	jalr	1032(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80002ba4:	fd9ff06f          	j	80002b7c <_ZN8KConsoleD1Ev+0xb0>
        KMemoryAllocator::mem_free(addr);
    80002ba8:	00048513          	mv	a0,s1
    80002bac:	00002097          	auipc	ra,0x2
    80002bb0:	c00080e7          	jalr	-1024(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    delete mutexHead;
    80002bb4:	02893483          	ld	s1,40(s2)
    80002bb8:	02048e63          	beqz	s1,80002bf4 <_ZN8KConsoleD1Ev+0x128>
        while (head) {
    80002bbc:	0084b503          	ld	a0,8(s1)
    80002bc0:	02050463          	beqz	a0,80002be8 <_ZN8KConsoleD1Ev+0x11c>
            head = head->nextSemaphore;
    80002bc4:	04853783          	ld	a5,72(a0)
    80002bc8:	00f4b423          	sd	a5,8(s1)
            old->nextSemaphore = nullptr;
    80002bcc:	04053423          	sd	zero,72(a0)
    void setErr(bool val) { err = val; }
    80002bd0:	00100793          	li	a5,1
    80002bd4:	02f509a3          	sb	a5,51(a0)
    void setWaiting(bool val) { waiting = val; }
    80002bd8:	02050923          	sb	zero,50(a0)
            KScheduler::put(old);
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	3c8080e7          	jalr	968(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        while (head) {
    80002be4:	fd9ff06f          	j	80002bbc <_ZN8KConsoleD1Ev+0xf0>
        KMemoryAllocator::mem_free(addr);
    80002be8:	00048513          	mv	a0,s1
    80002bec:	00002097          	auipc	ra,0x2
    80002bf0:	bc0080e7          	jalr	-1088(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
}
    80002bf4:	01813083          	ld	ra,24(sp)
    80002bf8:	01013403          	ld	s0,16(sp)
    80002bfc:	00813483          	ld	s1,8(sp)
    80002c00:	00013903          	ld	s2,0(sp)
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00008067          	ret

0000000080002c0c <_ZN8KConsole3putEc>:

void KConsole::put(char val) {
    80002c0c:	fe010113          	addi	sp,sp,-32
    80002c10:	00113c23          	sd	ra,24(sp)
    80002c14:	00813823          	sd	s0,16(sp)
    80002c18:	00913423          	sd	s1,8(sp)
    80002c1c:	01213023          	sd	s2,0(sp)
    80002c20:	02010413          	addi	s0,sp,32
    80002c24:	00050493          	mv	s1,a0
    80002c28:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002c2c:	01853503          	ld	a0,24(a0)
    void wait() { if(--val < 0) block(); }
    80002c30:	00052783          	lw	a5,0(a0)
    80002c34:	fff7879b          	addiw	a5,a5,-1
    80002c38:	00f52023          	sw	a5,0(a0)
    80002c3c:	02079713          	slli	a4,a5,0x20
    80002c40:	08074063          	bltz	a4,80002cc0 <_ZN8KConsole3putEc+0xb4>
    mutexTail->wait();
    80002c44:	0304b503          	ld	a0,48(s1)
    80002c48:	00052783          	lw	a5,0(a0)
    80002c4c:	fff7879b          	addiw	a5,a5,-1
    80002c50:	00f52023          	sw	a5,0(a0)
    80002c54:	02079713          	slli	a4,a5,0x20
    80002c58:	06074a63          	bltz	a4,80002ccc <_ZN8KConsole3putEc+0xc0>

    buffer[tail] = val;
    80002c5c:	0084b783          	ld	a5,8(s1)
    80002c60:	0144a703          	lw	a4,20(s1)
    80002c64:	00e787b3          	add	a5,a5,a4
    80002c68:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    80002c6c:	0144a783          	lw	a5,20(s1)
    80002c70:	0017879b          	addiw	a5,a5,1
    80002c74:	0004a703          	lw	a4,0(s1)
    80002c78:	02e7e7bb          	remw	a5,a5,a4
    80002c7c:	00f4aa23          	sw	a5,20(s1)

    mutexTail->signal();
    80002c80:	0304b503          	ld	a0,48(s1)
    void signal() { if (val++ < 0) deblock(); }
    80002c84:	00052783          	lw	a5,0(a0)
    80002c88:	0017871b          	addiw	a4,a5,1
    80002c8c:	00e52023          	sw	a4,0(a0)
    80002c90:	0407c463          	bltz	a5,80002cd8 <_ZN8KConsole3putEc+0xcc>
    itemAvailable->signal();
    80002c94:	0204b503          	ld	a0,32(s1)
    80002c98:	00052783          	lw	a5,0(a0)
    80002c9c:	0017871b          	addiw	a4,a5,1
    80002ca0:	00e52023          	sw	a4,0(a0)
    80002ca4:	0407c063          	bltz	a5,80002ce4 <_ZN8KConsole3putEc+0xd8>

}
    80002ca8:	01813083          	ld	ra,24(sp)
    80002cac:	01013403          	ld	s0,16(sp)
    80002cb0:	00813483          	ld	s1,8(sp)
    80002cb4:	00013903          	ld	s2,0(sp)
    80002cb8:	02010113          	addi	sp,sp,32
    80002cbc:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    80002cc0:	00002097          	auipc	ra,0x2
    80002cc4:	d68080e7          	jalr	-664(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002cc8:	f7dff06f          	j	80002c44 <_ZN8KConsole3putEc+0x38>
    80002ccc:	00002097          	auipc	ra,0x2
    80002cd0:	d5c080e7          	jalr	-676(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002cd4:	f89ff06f          	j	80002c5c <_ZN8KConsole3putEc+0x50>
    void signal() { if (val++ < 0) deblock(); }
    80002cd8:	00002097          	auipc	ra,0x2
    80002cdc:	dcc080e7          	jalr	-564(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002ce0:	fb5ff06f          	j	80002c94 <_ZN8KConsole3putEc+0x88>
    80002ce4:	00002097          	auipc	ra,0x2
    80002ce8:	dc0080e7          	jalr	-576(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002cec:	fbdff06f          	j	80002ca8 <_ZN8KConsole3putEc+0x9c>

0000000080002cf0 <_ZN8KConsole3getEv>:

int KConsole::get() {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	02010413          	addi	s0,sp,32
    80002d08:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002d0c:	02053503          	ld	a0,32(a0)
    void wait() { if(--val < 0) block(); }
    80002d10:	00052783          	lw	a5,0(a0)
    80002d14:	fff7879b          	addiw	a5,a5,-1
    80002d18:	00f52023          	sw	a5,0(a0)
    80002d1c:	02079713          	slli	a4,a5,0x20
    80002d20:	08074063          	bltz	a4,80002da0 <_ZN8KConsole3getEv+0xb0>
    mutexHead->wait();
    80002d24:	0284b503          	ld	a0,40(s1)
    80002d28:	00052783          	lw	a5,0(a0)
    80002d2c:	fff7879b          	addiw	a5,a5,-1
    80002d30:	00f52023          	sw	a5,0(a0)
    80002d34:	02079713          	slli	a4,a5,0x20
    80002d38:	06074a63          	bltz	a4,80002dac <_ZN8KConsole3getEv+0xbc>

    char ret = buffer[head];
    80002d3c:	0084b703          	ld	a4,8(s1)
    80002d40:	0104a783          	lw	a5,16(s1)
    80002d44:	00f70733          	add	a4,a4,a5
    80002d48:	00074903          	lbu	s2,0(a4)
    head = (head + 1) % cap;
    80002d4c:	0017879b          	addiw	a5,a5,1
    80002d50:	0004a703          	lw	a4,0(s1)
    80002d54:	02e7e7bb          	remw	a5,a5,a4
    80002d58:	00f4a823          	sw	a5,16(s1)

    mutexHead->signal();
    80002d5c:	0284b503          	ld	a0,40(s1)
    void signal() { if (val++ < 0) deblock(); }
    80002d60:	00052783          	lw	a5,0(a0)
    80002d64:	0017871b          	addiw	a4,a5,1
    80002d68:	00e52023          	sw	a4,0(a0)
    80002d6c:	0407c663          	bltz	a5,80002db8 <_ZN8KConsole3getEv+0xc8>
    spaceAvailable->signal();
    80002d70:	0184b503          	ld	a0,24(s1)
    80002d74:	00052783          	lw	a5,0(a0)
    80002d78:	0017871b          	addiw	a4,a5,1
    80002d7c:	00e52023          	sw	a4,0(a0)
    80002d80:	0407c263          	bltz	a5,80002dc4 <_ZN8KConsole3getEv+0xd4>
    return ret;
}
    80002d84:	00090513          	mv	a0,s2
    80002d88:	01813083          	ld	ra,24(sp)
    80002d8c:	01013403          	ld	s0,16(sp)
    80002d90:	00813483          	ld	s1,8(sp)
    80002d94:	00013903          	ld	s2,0(sp)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	c88080e7          	jalr	-888(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002da8:	f7dff06f          	j	80002d24 <_ZN8KConsole3getEv+0x34>
    80002dac:	00002097          	auipc	ra,0x2
    80002db0:	c7c080e7          	jalr	-900(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002db4:	f89ff06f          	j	80002d3c <_ZN8KConsole3getEv+0x4c>
    void signal() { if (val++ < 0) deblock(); }
    80002db8:	00002097          	auipc	ra,0x2
    80002dbc:	cec080e7          	jalr	-788(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002dc0:	fb1ff06f          	j	80002d70 <_ZN8KConsole3getEv+0x80>
    80002dc4:	00002097          	auipc	ra,0x2
    80002dc8:	ce0080e7          	jalr	-800(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002dcc:	fb9ff06f          	j	80002d84 <_ZN8KConsole3getEv+0x94>

0000000080002dd0 <_ZN8KConsole6getCntEv>:

int KConsole::getCnt() {
    80002dd0:	fe010113          	addi	sp,sp,-32
    80002dd4:	00113c23          	sd	ra,24(sp)
    80002dd8:	00813823          	sd	s0,16(sp)
    80002ddc:	00913423          	sd	s1,8(sp)
    80002de0:	01213023          	sd	s2,0(sp)
    80002de4:	02010413          	addi	s0,sp,32
    80002de8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002dec:	02853503          	ld	a0,40(a0)
    void wait() { if(--val < 0) block(); }
    80002df0:	00052783          	lw	a5,0(a0)
    80002df4:	fff7879b          	addiw	a5,a5,-1
    80002df8:	00f52023          	sw	a5,0(a0)
    80002dfc:	02079713          	slli	a4,a5,0x20
    80002e00:	06074863          	bltz	a4,80002e70 <_ZN8KConsole6getCntEv+0xa0>
    mutexTail->wait();
    80002e04:	0304b503          	ld	a0,48(s1)
    80002e08:	00052783          	lw	a5,0(a0)
    80002e0c:	fff7879b          	addiw	a5,a5,-1
    80002e10:	00f52023          	sw	a5,0(a0)
    80002e14:	02079713          	slli	a4,a5,0x20
    80002e18:	06074263          	bltz	a4,80002e7c <_ZN8KConsole6getCntEv+0xac>

    if (tail >= head) {
    80002e1c:	0144a783          	lw	a5,20(s1)
    80002e20:	0104a903          	lw	s2,16(s1)
    80002e24:	0727c263          	blt	a5,s2,80002e88 <_ZN8KConsole6getCntEv+0xb8>
        ret = tail - head;
    80002e28:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002e2c:	0304b503          	ld	a0,48(s1)
    void signal() { if (val++ < 0) deblock(); }
    80002e30:	00052783          	lw	a5,0(a0)
    80002e34:	0017871b          	addiw	a4,a5,1
    80002e38:	00e52023          	sw	a4,0(a0)
    80002e3c:	0407ce63          	bltz	a5,80002e98 <_ZN8KConsole6getCntEv+0xc8>
    mutexHead->signal();
    80002e40:	0284b503          	ld	a0,40(s1)
    80002e44:	00052783          	lw	a5,0(a0)
    80002e48:	0017871b          	addiw	a4,a5,1
    80002e4c:	00e52023          	sw	a4,0(a0)
    80002e50:	0407ca63          	bltz	a5,80002ea4 <_ZN8KConsole6getCntEv+0xd4>
    return ret;
}
    80002e54:	00090513          	mv	a0,s2
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	00013903          	ld	s2,0(sp)
    80002e68:	02010113          	addi	sp,sp,32
    80002e6c:	00008067          	ret
    void wait() { if(--val < 0) block(); }
    80002e70:	00002097          	auipc	ra,0x2
    80002e74:	bb8080e7          	jalr	-1096(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002e78:	f8dff06f          	j	80002e04 <_ZN8KConsole6getCntEv+0x34>
    80002e7c:	00002097          	auipc	ra,0x2
    80002e80:	bac080e7          	jalr	-1108(ra) # 80004a28 <_ZN10KSemaphore5blockEv>
    80002e84:	f99ff06f          	j	80002e1c <_ZN8KConsole6getCntEv+0x4c>
        ret = cap - head + tail;
    80002e88:	0004a703          	lw	a4,0(s1)
    80002e8c:	4127093b          	subw	s2,a4,s2
    80002e90:	00f9093b          	addw	s2,s2,a5
    80002e94:	f99ff06f          	j	80002e2c <_ZN8KConsole6getCntEv+0x5c>
    void signal() { if (val++ < 0) deblock(); }
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	c0c080e7          	jalr	-1012(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002ea0:	fa1ff06f          	j	80002e40 <_ZN8KConsole6getCntEv+0x70>
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	c00080e7          	jalr	-1024(ra) # 80004aa4 <_ZN10KSemaphore7deblockEv>
    80002eac:	fa9ff06f          	j	80002e54 <_ZN8KConsole6getCntEv+0x84>

0000000080002eb0 <_ZN8KConsole18initConsoleBuffersEv>:

void KConsole::initConsoleBuffers() {
    80002eb0:	fe010113          	addi	sp,sp,-32
    80002eb4:	00113c23          	sd	ra,24(sp)
    80002eb8:	00813823          	sd	s0,16(sp)
    80002ebc:	00913423          	sd	s1,8(sp)
    80002ec0:	01213023          	sd	s2,0(sp)
    80002ec4:	02010413          	addi	s0,sp,32
    char* buffer;
    int head, tail;

    void* operator new(size_t size) {
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
    80002ec8:	00200513          	li	a0,2
    80002ecc:	00001097          	auipc	ra,0x1
    80002ed0:	7f4080e7          	jalr	2036(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    80002ed4:	00050493          	mv	s1,a0
    inBuff = new KConsole(BUFF_SIZE);
    80002ed8:	40000593          	li	a1,1024
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	b40080e7          	jalr	-1216(ra) # 80002a1c <_ZN8KConsoleC1Ei>
    80002ee4:	00007797          	auipc	a5,0x7
    80002ee8:	0497b623          	sd	s1,76(a5) # 80009f30 <_ZN8KConsole6inBuffE>
    80002eec:	00200513          	li	a0,2
    80002ef0:	00001097          	auipc	ra,0x1
    80002ef4:	7d0080e7          	jalr	2000(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    80002ef8:	00050493          	mv	s1,a0
    outBuff = new KConsole(BUFF_SIZE);
    80002efc:	40000593          	li	a1,1024
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	b1c080e7          	jalr	-1252(ra) # 80002a1c <_ZN8KConsoleC1Ei>
    80002f08:	00007797          	auipc	a5,0x7
    80002f0c:	0297b823          	sd	s1,48(a5) # 80009f38 <_ZN8KConsole7outBuffE>
}
    80002f10:	01813083          	ld	ra,24(sp)
    80002f14:	01013403          	ld	s0,16(sp)
    80002f18:	00813483          	ld	s1,8(sp)
    80002f1c:	00013903          	ld	s2,0(sp)
    80002f20:	02010113          	addi	sp,sp,32
    80002f24:	00008067          	ret
    80002f28:	00050913          	mv	s2,a0
        size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
        return KMemoryAllocator::mem_alloc(sizeBlock);
        //return __mem_alloc(size);
    }
    void operator delete(void* addr) {
        KMemoryAllocator::mem_free(addr);
    80002f2c:	00048513          	mv	a0,s1
    80002f30:	00002097          	auipc	ra,0x2
    80002f34:	87c080e7          	jalr	-1924(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    80002f38:	00090513          	mv	a0,s2
    80002f3c:	00008097          	auipc	ra,0x8
    80002f40:	13c080e7          	jalr	316(ra) # 8000b078 <_Unwind_Resume>
    80002f44:	00050913          	mv	s2,a0
    80002f48:	00048513          	mv	a0,s1
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	860080e7          	jalr	-1952(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    80002f54:	00090513          	mv	a0,s2
    80002f58:	00008097          	auipc	ra,0x8
    80002f5c:	120080e7          	jalr	288(ra) # 8000b078 <_Unwind_Resume>

0000000080002f60 <_ZN10KScheduler3getEv>:
#include "../h/KPCB.hpp"

KPCB* KScheduler::head = nullptr;
KPCB* KScheduler::tail = nullptr;

KPCB *KScheduler::get() {
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00813423          	sd	s0,8(sp)
    80002f68:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80002f6c:	00007517          	auipc	a0,0x7
    80002f70:	fd453503          	ld	a0,-44(a0) # 80009f40 <_ZN10KScheduler4headE>
    80002f74:	00050c63          	beqz	a0,80002f8c <_ZN10KScheduler3getEv+0x2c>
    KPCB* curr = head;
    head = head->nextScheduler;
    80002f78:	03853783          	ld	a5,56(a0)
    80002f7c:	00007717          	auipc	a4,0x7
    80002f80:	fcf73223          	sd	a5,-60(a4) # 80009f40 <_ZN10KScheduler4headE>
    if (!head) tail = nullptr;
    80002f84:	00078a63          	beqz	a5,80002f98 <_ZN10KScheduler3getEv+0x38>
    curr->nextScheduler = nullptr;
    80002f88:	02053c23          	sd	zero,56(a0)
    return curr;
}
    80002f8c:	00813403          	ld	s0,8(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret
    if (!head) tail = nullptr;
    80002f98:	00007797          	auipc	a5,0x7
    80002f9c:	fa07b823          	sd	zero,-80(a5) # 80009f48 <_ZN10KScheduler4tailE>
    80002fa0:	fe9ff06f          	j	80002f88 <_ZN10KScheduler3getEv+0x28>

0000000080002fa4 <_ZN10KScheduler3putEP4KPCB>:

void KScheduler::put(KPCB *kpcb) {
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00813423          	sd	s0,8(sp)
    80002fac:	01010413          	addi	s0,sp,16
    if (!head) head = kpcb;
    80002fb0:	00007797          	auipc	a5,0x7
    80002fb4:	f907b783          	ld	a5,-112(a5) # 80009f40 <_ZN10KScheduler4headE>
    80002fb8:	02078263          	beqz	a5,80002fdc <_ZN10KScheduler3putEP4KPCB+0x38>
    else tail->nextScheduler = kpcb;
    80002fbc:	00007797          	auipc	a5,0x7
    80002fc0:	f8c7b783          	ld	a5,-116(a5) # 80009f48 <_ZN10KScheduler4tailE>
    80002fc4:	02a7bc23          	sd	a0,56(a5)
    tail = kpcb;
    80002fc8:	00007797          	auipc	a5,0x7
    80002fcc:	f8a7b023          	sd	a0,-128(a5) # 80009f48 <_ZN10KScheduler4tailE>
}
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret
    if (!head) head = kpcb;
    80002fdc:	00007797          	auipc	a5,0x7
    80002fe0:	f6a7b223          	sd	a0,-156(a5) # 80009f40 <_ZN10KScheduler4headE>
    80002fe4:	fe5ff06f          	j	80002fc8 <_ZN10KScheduler3putEP4KPCB+0x24>

0000000080002fe8 <_ZN4KPCB5yieldEv>:
KPCB* KPCB::running = nullptr;
int KPCB::counter = 0;
int KPCB::statID = 0;
time_t KPCB::timeSliceCounter = 0;

void KPCB::yield() {
    80002fe8:	ff010113          	addi	sp,sp,-16
    80002fec:	00813423          	sd	s0,8(sp)
    80002ff0:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    80002ff4:	01300513          	li	a0,19
    asm volatile ("ecall");
    80002ff8:	00000073          	ecall
}
    80002ffc:	00813403          	ld	s0,8(sp)
    80003000:	01010113          	addi	sp,sp,16
    80003004:	00008067          	ret

0000000080003008 <_ZN4KPCB13threadWrapperEv>:

KPCB *KPCB::createThread(KPCB::Body body) {
    return new KPCB(body);
}

void KPCB::threadWrapper() {
    80003008:	fe010113          	addi	sp,sp,-32
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	02010413          	addi	s0,sp,32
    KRiscv::popSppSpie();
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	230080e7          	jalr	560(ra) # 8000124c <_ZN6KRiscv10popSppSpieEv>
    running->body(running->args);
    80003024:	00007497          	auipc	s1,0x7
    80003028:	f2c48493          	addi	s1,s1,-212 # 80009f50 <_ZN4KPCB7runningE>
    8000302c:	0004b783          	ld	a5,0(s1)
    80003030:	0007b703          	ld	a4,0(a5)
    80003034:	0107b503          	ld	a0,16(a5)
    80003038:	000700e7          	jalr	a4
    running->setFinished(true);
    8000303c:	0004b783          	ld	a5,0(s1)
        if (finished) return;
    80003040:	0307c703          	lbu	a4,48(a5)
    80003044:	00071c63          	bnez	a4,8000305c <_ZN4KPCB13threadWrapperEv+0x54>
        finished = val;
    80003048:	00100713          	li	a4,1
    8000304c:	02e78823          	sb	a4,48(a5)
        counter--;
    80003050:	0084a783          	lw	a5,8(s1)
    80003054:	fff7879b          	addiw	a5,a5,-1
    80003058:	00f4a423          	sw	a5,8(s1)
    KPCB::yield();
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	f8c080e7          	jalr	-116(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
}
    80003064:	01813083          	ld	ra,24(sp)
    80003068:	01013403          	ld	s0,16(sp)
    8000306c:	00813483          	ld	s1,8(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret

0000000080003078 <_ZN4KPCB8dispatchEv>:
void KPCB::dispatch() {
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	02010413          	addi	s0,sp,32
    KPCB* old = running;
    8000308c:	00007497          	auipc	s1,0x7
    80003090:	ec44b483          	ld	s1,-316(s1) # 80009f50 <_ZN4KPCB7runningE>
    bool isFinished() const { return finished; }
    80003094:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished() && !old->isWaiting() && !old->isErr() && !old->isSleeping()) KScheduler::put(old);
    80003098:	00079e63          	bnez	a5,800030b4 <_ZN4KPCB8dispatchEv+0x3c>
    bool isWaiting() const { return waiting; }
    8000309c:	0324c783          	lbu	a5,50(s1)
    800030a0:	00079a63          	bnez	a5,800030b4 <_ZN4KPCB8dispatchEv+0x3c>
    bool isErr() const { return err; }
    800030a4:	0334c783          	lbu	a5,51(s1)
    800030a8:	00079663          	bnez	a5,800030b4 <_ZN4KPCB8dispatchEv+0x3c>
    bool isSleeping() const { return sleeping; }
    800030ac:	0314c783          	lbu	a5,49(s1)
    800030b0:	04078263          	beqz	a5,800030f4 <_ZN4KPCB8dispatchEv+0x7c>
    running = KScheduler::get();
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	eac080e7          	jalr	-340(ra) # 80002f60 <_ZN10KScheduler3getEv>
    800030bc:	00007797          	auipc	a5,0x7
    800030c0:	e9478793          	addi	a5,a5,-364 # 80009f50 <_ZN4KPCB7runningE>
    800030c4:	00a7b023          	sd	a0,0(a5)
    KPCB::timeSliceCounter = 0;
    800030c8:	0007b823          	sd	zero,16(a5)
    else*/ if (running != old) KPCB::contextSwitch(&old->context, &running->context);
    800030cc:	00a48a63          	beq	s1,a0,800030e0 <_ZN4KPCB8dispatchEv+0x68>
    800030d0:	02050593          	addi	a1,a0,32
    800030d4:	02048513          	addi	a0,s1,32
    800030d8:	ffffe097          	auipc	ra,0xffffe
    800030dc:	140080e7          	jalr	320(ra) # 80001218 <_ZN4KPCB13contextSwitchEPNS_7ContextES1_>
}
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret
    if (!old->isFinished() && !old->isWaiting() && !old->isErr() && !old->isSleeping()) KScheduler::put(old);
    800030f4:	00048513          	mv	a0,s1
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	eac080e7          	jalr	-340(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
    80003100:	fb5ff06f          	j	800030b4 <_ZN4KPCB8dispatchEv+0x3c>

0000000080003104 <_ZN4KPCBC1EPFvPvES0_S0_>:

KPCB::KPCB(Body body, void* args, void* stek) :
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00813423          	sd	s0,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    body(body), ID(statID++), args(args), stack(body != nullptr ? (uint64*)stek : nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80003110:	00b53023          	sd	a1,0(a0)
    body(body), ID(statID++), args(args), stack(body != nullptr ? (uint64*)stek : nullptr),
    80003114:	00007717          	auipc	a4,0x7
    80003118:	e3c70713          	addi	a4,a4,-452 # 80009f50 <_ZN4KPCB7runningE>
    8000311c:	01872783          	lw	a5,24(a4)
    80003120:	0017881b          	addiw	a6,a5,1
    80003124:	01072c23          	sw	a6,24(a4)
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80003128:	00f52423          	sw	a5,8(a0)
    8000312c:	00c53823          	sd	a2,16(a0)
    body(body), ID(statID++), args(args), stack(body != nullptr ? (uint64*)stek : nullptr),
    80003130:	06058863          	beqz	a1,800031a0 <_ZN4KPCBC1EPFvPvES0_S0_+0x9c>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80003134:	00d53c23          	sd	a3,24(a0)
    80003138:	06058863          	beqz	a1,800031a8 <_ZN4KPCBC1EPFvPvES0_S0_+0xa4>
    8000313c:	00000797          	auipc	a5,0x0
    80003140:	ecc78793          	addi	a5,a5,-308 # 80003008 <_ZN4KPCB13threadWrapperEv>
    80003144:	02f53023          	sd	a5,32(a0)
    80003148:	06068463          	beqz	a3,800031b0 <_ZN4KPCBC1EPFvPvES0_S0_+0xac>
    8000314c:	000107b7          	lui	a5,0x10
    80003150:	00f686b3          	add	a3,a3,a5
    80003154:	02d53423          	sd	a3,40(a0)
    80003158:	02050823          	sb	zero,48(a0)
    8000315c:	020508a3          	sb	zero,49(a0)
    80003160:	02050923          	sb	zero,50(a0)
    80003164:	020509a3          	sb	zero,51(a0)
    80003168:	02050a23          	sb	zero,52(a0)
    8000316c:	02053c23          	sd	zero,56(a0)
    80003170:	04053023          	sd	zero,64(a0)
    80003174:	04053423          	sd	zero,72(a0)
    80003178:	04053823          	sd	zero,80(a0)
    {
        if (body != nullptr) {
    8000317c:	00058c63          	beqz	a1,80003194 <_ZN4KPCBC1EPFvPvES0_S0_+0x90>
            //KScheduler::put(this);
            counter++;
    80003180:	00007717          	auipc	a4,0x7
    80003184:	dd070713          	addi	a4,a4,-560 # 80009f50 <_ZN4KPCB7runningE>
    80003188:	00872783          	lw	a5,8(a4)
    8000318c:	0017879b          	addiw	a5,a5,1
    80003190:	00f72423          	sw	a5,8(a4)
        }
    }
    80003194:	00813403          	ld	s0,8(sp)
    80003198:	01010113          	addi	sp,sp,16
    8000319c:	00008067          	ret
    body(body), ID(statID++), args(args), stack(body != nullptr ? (uint64*)stek : nullptr),
    800031a0:	00000693          	li	a3,0
    800031a4:	f91ff06f          	j	80003134 <_ZN4KPCBC1EPFvPvES0_S0_+0x30>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    800031a8:	00000793          	li	a5,0
    800031ac:	f99ff06f          	j	80003144 <_ZN4KPCBC1EPFvPvES0_S0_+0x40>
    800031b0:	00000693          	li	a3,0
    800031b4:	fa1ff06f          	j	80003154 <_ZN4KPCBC1EPFvPvES0_S0_+0x50>

00000000800031b8 <_ZN4KPCB12createThreadEPFvPvES0_S0_>:
KPCB *KPCB::createThread(KPCB::Body body, void* args, void* stek) {
    800031b8:	fd010113          	addi	sp,sp,-48
    800031bc:	02113423          	sd	ra,40(sp)
    800031c0:	02813023          	sd	s0,32(sp)
    800031c4:	00913c23          	sd	s1,24(sp)
    800031c8:	01213823          	sd	s2,16(sp)
    800031cc:	01313423          	sd	s3,8(sp)
    800031d0:	01413023          	sd	s4,0(sp)
    800031d4:	03010413          	addi	s0,sp,48
    800031d8:	00050913          	mv	s2,a0
    800031dc:	00058993          	mv	s3,a1
    800031e0:	00060a13          	mv	s4,a2
        return KMemoryAllocator::mem_alloc(sizeBlock);
    800031e4:	00200513          	li	a0,2
    800031e8:	00001097          	auipc	ra,0x1
    800031ec:	4d8080e7          	jalr	1240(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    800031f0:	00050493          	mv	s1,a0
    return new KPCB(body, args, stek);
    800031f4:	000a0693          	mv	a3,s4
    800031f8:	00098613          	mv	a2,s3
    800031fc:	00090593          	mv	a1,s2
    80003200:	00000097          	auipc	ra,0x0
    80003204:	f04080e7          	jalr	-252(ra) # 80003104 <_ZN4KPCBC1EPFvPvES0_S0_>
}
    80003208:	00048513          	mv	a0,s1
    8000320c:	02813083          	ld	ra,40(sp)
    80003210:	02013403          	ld	s0,32(sp)
    80003214:	01813483          	ld	s1,24(sp)
    80003218:	01013903          	ld	s2,16(sp)
    8000321c:	00813983          	ld	s3,8(sp)
    80003220:	00013a03          	ld	s4,0(sp)
    80003224:	03010113          	addi	sp,sp,48
    80003228:	00008067          	ret

000000008000322c <_ZN4KPCBC1EPFvPvE>:

KPCB::KPCB(Body body) :
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	01213023          	sd	s2,0(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050493          	mv	s1,a0
    80003248:	00058913          	mv	s2,a1
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new uint64[STACK_SIZE]: nullptr),
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    8000324c:	00b53023          	sd	a1,0(a0)
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new uint64[STACK_SIZE]: nullptr),
    80003250:	00007717          	auipc	a4,0x7
    80003254:	d0070713          	addi	a4,a4,-768 # 80009f50 <_ZN4KPCB7runningE>
    80003258:	01872783          	lw	a5,24(a4)
    8000325c:	0017869b          	addiw	a3,a5,1
    80003260:	00d72c23          	sw	a3,24(a4)
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    80003264:	00f52423          	sw	a5,8(a0)
    80003268:	00053823          	sd	zero,16(a0)
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new uint64[STACK_SIZE]: nullptr),
    8000326c:	08058463          	beqz	a1,800032f4 <_ZN4KPCBC1EPFvPvE+0xc8>
    80003270:	00010537          	lui	a0,0x10
    80003274:	00000097          	auipc	ra,0x0
    80003278:	3dc080e7          	jalr	988(ra) # 80003650 <_Znam>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    8000327c:	00a4bc23          	sd	a0,24(s1)
    80003280:	06090e63          	beqz	s2,800032fc <_ZN4KPCBC1EPFvPvE+0xd0>
    80003284:	00000797          	auipc	a5,0x0
    80003288:	d8478793          	addi	a5,a5,-636 # 80003008 <_ZN4KPCB13threadWrapperEv>
    8000328c:	02f4b023          	sd	a5,32(s1)
    80003290:	06050a63          	beqz	a0,80003304 <_ZN4KPCBC1EPFvPvE+0xd8>
    80003294:	000107b7          	lui	a5,0x10
    80003298:	00f50533          	add	a0,a0,a5
    8000329c:	02a4b423          	sd	a0,40(s1)
    800032a0:	02048823          	sb	zero,48(s1)
    800032a4:	020488a3          	sb	zero,49(s1)
    800032a8:	02048923          	sb	zero,50(s1)
    800032ac:	020489a3          	sb	zero,51(s1)
    800032b0:	02048a23          	sb	zero,52(s1)
    800032b4:	0204bc23          	sd	zero,56(s1)
    800032b8:	0404b023          	sd	zero,64(s1)
    800032bc:	0404b423          	sd	zero,72(s1)
    800032c0:	0404b823          	sd	zero,80(s1)
    {
        if (body != nullptr) {
    800032c4:	00090c63          	beqz	s2,800032dc <_ZN4KPCBC1EPFvPvE+0xb0>
            //KScheduler::put(this);
            counter++;
    800032c8:	00007717          	auipc	a4,0x7
    800032cc:	c8870713          	addi	a4,a4,-888 # 80009f50 <_ZN4KPCB7runningE>
    800032d0:	00872783          	lw	a5,8(a4)
    800032d4:	0017879b          	addiw	a5,a5,1
    800032d8:	00f72423          	sw	a5,8(a4)
        }
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	00013903          	ld	s2,0(sp)
    800032ec:	02010113          	addi	sp,sp,32
    800032f0:	00008067          	ret
    body(body), ID(statID++), args(nullptr), stack(body != nullptr ? new uint64[STACK_SIZE]: nullptr),
    800032f4:	00000513          	li	a0,0
    800032f8:	f85ff06f          	j	8000327c <_ZN4KPCBC1EPFvPvE+0x50>
    context({body != nullptr ? /*(uint64)body*/ (uint64)&threadWrapper : 0, stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0})
    800032fc:	00000793          	li	a5,0
    80003300:	f8dff06f          	j	8000328c <_ZN4KPCBC1EPFvPvE+0x60>
    80003304:	00000513          	li	a0,0
    80003308:	f95ff06f          	j	8000329c <_ZN4KPCBC1EPFvPvE+0x70>

000000008000330c <_ZN4KPCB12createThreadEPFvPvE>:
KPCB *KPCB::createThread(KPCB::Body body) {
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00113c23          	sd	ra,24(sp)
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	01213023          	sd	s2,0(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	00050913          	mv	s2,a0
    80003328:	00200513          	li	a0,2
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	394080e7          	jalr	916(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    80003334:	00050493          	mv	s1,a0
    return new KPCB(body);
    80003338:	00090593          	mv	a1,s2
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	ef0080e7          	jalr	-272(ra) # 8000322c <_ZN4KPCBC1EPFvPvE>
    80003344:	0200006f          	j	80003364 <_ZN4KPCB12createThreadEPFvPvE+0x58>
    80003348:	00050913          	mv	s2,a0
        KMemoryAllocator::mem_free(addr);
    8000334c:	00048513          	mv	a0,s1
    80003350:	00001097          	auipc	ra,0x1
    80003354:	45c080e7          	jalr	1116(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    80003358:	00090513          	mv	a0,s2
    8000335c:	00008097          	auipc	ra,0x8
    80003360:	d1c080e7          	jalr	-740(ra) # 8000b078 <_Unwind_Resume>
}
    80003364:	00048513          	mv	a0,s1
    80003368:	01813083          	ld	ra,24(sp)
    8000336c:	01013403          	ld	s0,16(sp)
    80003370:	00813483          	ld	s1,8(sp)
    80003374:	00013903          	ld	s2,0(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret

0000000080003380 <_Z11userWrapperPv>:
void test_memory();
void test_thread();
void test_semaphore();
void test_complex();
void userMain();
void userWrapper(void* arg) {
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00113423          	sd	ra,8(sp)
    80003388:	00813023          	sd	s0,0(sp)
    8000338c:	01010413          	addi	s0,sp,16
    userMain();
    80003390:	00002097          	auipc	ra,0x2
    80003394:	254080e7          	jalr	596(ra) # 800055e4 <_Z8userMainv>
}
    80003398:	00813083          	ld	ra,8(sp)
    8000339c:	00013403          	ld	s0,0(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <main>:

void main() {
    800033a8:	fd010113          	addi	sp,sp,-48
    800033ac:	02113423          	sd	ra,40(sp)
    800033b0:	02813023          	sd	s0,32(sp)
    800033b4:	00913c23          	sd	s1,24(sp)
    800033b8:	03010413          	addi	s0,sp,48
    KRiscv::w_stvec((uint64)&KRiscv::interrupt);
    800033bc:	00007797          	auipc	a5,0x7
    800033c0:	b0c7b783          	ld	a5,-1268(a5) # 80009ec8 <_GLOBAL_OFFSET_TABLE_+0x48>
    asm volatile ("csrw stvec, %0" :: "r"(stvec));
    800033c4:	10579073          	csrw	stvec,a5
    KMemoryAllocator::initBlockHeader();
    800033c8:	00001097          	auipc	ra,0x1
    800033cc:	4a8080e7          	jalr	1192(ra) # 80004870 <_ZN16KMemoryAllocator15initBlockHeaderEv>
    KConsole::initConsoleBuffers();
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	ae0080e7          	jalr	-1312(ra) # 80002eb0 <_ZN8KConsole18initConsoleBuffersEv>

    KPCB* main = nullptr;
    main = KPCB::createThread(nullptr, nullptr, nullptr);
    800033d8:	00000613          	li	a2,0
    800033dc:	00000593          	li	a1,0
    800033e0:	00000513          	li	a0,0
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	dd4080e7          	jalr	-556(ra) # 800031b8 <_ZN4KPCB12createThreadEPFvPvES0_S0_>
    KPCB::running = main;
    800033ec:	00007797          	auipc	a5,0x7
    800033f0:	acc7b783          	ld	a5,-1332(a5) # 80009eb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800033f4:	00a7b023          	sd	a0,0(a5)

    KPCB* user = nullptr;
    800033f8:	fc043c23          	sd	zero,-40(s0)
    thread_create(&user, &userWrapper, nullptr);
    800033fc:	00000613          	li	a2,0
    80003400:	00000597          	auipc	a1,0x0
    80003404:	f8058593          	addi	a1,a1,-128 # 80003380 <_Z11userWrapperPv>
    80003408:	fd840513          	addi	a0,s0,-40
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	634080e7          	jalr	1588(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
    80003414:	00200793          	li	a5,2
    80003418:	1007a073          	csrs	sstatus,a5

    KRiscv::ms_sstatus(KRiscv::SSTATUS_SIE);
    userMode();
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	570080e7          	jalr	1392(ra) # 8000198c <_Z8userModev>
    //test_memory();
    //test_thread();
    //test_semaphore();
    //test_complex();

    while (KPCB::counter) KPCB::yield();
    80003424:	00007797          	auipc	a5,0x7
    80003428:	ab47b783          	ld	a5,-1356(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000342c:	0007a783          	lw	a5,0(a5)
    80003430:	00078863          	beqz	a5,80003440 <main+0x98>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	bb4080e7          	jalr	-1100(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    8000343c:	fe9ff06f          	j	80003424 <main+0x7c>
    if (user) delete user;
    80003440:	fd843483          	ld	s1,-40(s0)
    80003444:	02048063          	beqz	s1,80003464 <main+0xbc>
    ~KPCB() { delete[] stack; }
    80003448:	0184b503          	ld	a0,24(s1)
    8000344c:	00050663          	beqz	a0,80003458 <main+0xb0>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	228080e7          	jalr	552(ra) # 80003678 <_ZdaPv>
        KMemoryAllocator::mem_free(addr);
    80003458:	00048513          	mv	a0,s1
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	350080e7          	jalr	848(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
}
    80003464:	02813083          	ld	ra,40(sp)
    80003468:	02013403          	ld	s0,32(sp)
    8000346c:	01813483          	ld	s1,24(sp)
    80003470:	03010113          	addi	sp,sp,48
    80003474:	00008067          	ret

0000000080003478 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_CPP(&myHandle, body, arg);
}

Thread::~Thread() {
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813423          	sd	s0,8(sp)
    80003480:	01010413          	addi	s0,sp,16
    80003484:	00007797          	auipc	a5,0x7
    80003488:	93478793          	addi	a5,a5,-1740 # 80009db8 <_ZTV6Thread+0x10>
    8000348c:	00f53023          	sd	a5,0(a0) # 10000 <_entry-0x7fff0000>
    myHandle->setFinished(true);
    80003490:	00853783          	ld	a5,8(a0)
        if (finished) return;
    80003494:	0307c703          	lbu	a4,48(a5)
    80003498:	02071063          	bnez	a4,800034b8 <_ZN6ThreadD1Ev+0x40>
        finished = val;
    8000349c:	00100713          	li	a4,1
    800034a0:	02e78823          	sb	a4,48(a5)
        counter--;
    800034a4:	00007717          	auipc	a4,0x7
    800034a8:	a3473703          	ld	a4,-1484(a4) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800034ac:	00072783          	lw	a5,0(a4)
    800034b0:	fff7879b          	addiw	a5,a5,-1
    800034b4:	00f72023          	sw	a5,0(a4)
}
    800034b8:	00813403          	ld	s0,8(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN6Thread7wrapperEPv>:
    thread_create_CPP(&myHandle, &wrapper, this);
}

void Thread::wrapper(void *args) {
    Thread* thr = (Thread*)args;
    if (thr) thr->run();
    800034c4:	02050863          	beqz	a0,800034f4 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void *args) {
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	00813023          	sd	s0,0(sp)
    800034d4:	01010413          	addi	s0,sp,16
    if (thr) thr->run();
    800034d8:	00053783          	ld	a5,0(a0)
    800034dc:	0107b783          	ld	a5,16(a5)
    800034e0:	000780e7          	jalr	a5
}
    800034e4:	00813083          	ld	ra,8(sp)
    800034e8:	00013403          	ld	s0,0(sp)
    800034ec:	01010113          	addi	sp,sp,16
    800034f0:	00008067          	ret
    800034f4:	00008067          	ret

00000000800034f8 <_ZN14PeriodicThread15wrapperPeriodicEPv>:
PeriodicThread::PeriodicThread(time_t period)
    : Thread(&wrapperPeriodic, new pStruct({this, period})) {

}

void PeriodicThread::wrapperPeriodic(void *args) {
    800034f8:	fe010113          	addi	sp,sp,-32
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	02010413          	addi	s0,sp,32
    8000350c:	00050493          	mv	s1,a0
    pStruct* pstr = (pStruct*) args;
    if (pstr) {
    80003510:	02050263          	beqz	a0,80003534 <_ZN14PeriodicThread15wrapperPeriodicEPv+0x3c>
        while (true) {
            pstr->pthr->periodicActivation();
    80003514:	0004b503          	ld	a0,0(s1)
    80003518:	00053783          	ld	a5,0(a0)
    8000351c:	0187b783          	ld	a5,24(a5)
    80003520:	000780e7          	jalr	a5
            time_sleep(pstr->pperiod);
    80003524:	0084b503          	ld	a0,8(s1)
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	6c0080e7          	jalr	1728(ra) # 80001be8 <_Z10time_sleepm>
        while (true) {
    80003530:	fe5ff06f          	j	80003514 <_ZN14PeriodicThread15wrapperPeriodicEPv+0x1c>
        }
    }
}
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret

0000000080003548 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00113423          	sd	ra,8(sp)
    80003550:	00813023          	sd	s0,0(sp)
    80003554:	01010413          	addi	s0,sp,16
    80003558:	00007797          	auipc	a5,0x7
    8000355c:	88878793          	addi	a5,a5,-1912 # 80009de0 <_ZTV9Semaphore+0x10>
    80003560:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80003564:	00853503          	ld	a0,8(a0)
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	5e8080e7          	jalr	1512(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
}
    80003570:	00813083          	ld	ra,8(sp)
    80003574:	00013403          	ld	s0,0(sp)
    80003578:	01010113          	addi	sp,sp,16
    8000357c:	00008067          	ret

0000000080003580 <_Znwm>:
void* operator new(size_t size) {
    80003580:	ff010113          	addi	sp,sp,-16
    80003584:	00113423          	sd	ra,8(sp)
    80003588:	00813023          	sd	s0,0(sp)
    8000358c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	390080e7          	jalr	912(ra) # 80001920 <_Z9mem_allocm>
}
    80003598:	00813083          	ld	ra,8(sp)
    8000359c:	00013403          	ld	s0,0(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <_ZdlPv>:
void operator delete (void* addr) {
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00113423          	sd	ra,8(sp)
    800035b0:	00813023          	sd	s0,0(sp)
    800035b4:	01010413          	addi	s0,sp,16
    mem_free(addr);
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	3a8080e7          	jalr	936(ra) # 80001960 <_Z8mem_freePv>
}
    800035c0:	00813083          	ld	ra,8(sp)
    800035c4:	00013403          	ld	s0,0(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00813823          	sd	s0,16(sp)
    800035dc:	00913423          	sd	s1,8(sp)
    800035e0:	02010413          	addi	s0,sp,32
    800035e4:	00050493          	mv	s1,a0
}
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	e90080e7          	jalr	-368(ra) # 80003478 <_ZN6ThreadD1Ev>
    800035f0:	00048513          	mv	a0,s1
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	fb4080e7          	jalr	-76(ra) # 800035a8 <_ZdlPv>
    800035fc:	01813083          	ld	ra,24(sp)
    80003600:	01013403          	ld	s0,16(sp)
    80003604:	00813483          	ld	s1,8(sp)
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret

0000000080003610 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	02010413          	addi	s0,sp,32
    80003624:	00050493          	mv	s1,a0
}
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	f20080e7          	jalr	-224(ra) # 80003548 <_ZN9SemaphoreD1Ev>
    80003630:	00048513          	mv	a0,s1
    80003634:	00000097          	auipc	ra,0x0
    80003638:	f74080e7          	jalr	-140(ra) # 800035a8 <_ZdlPv>
    8000363c:	01813083          	ld	ra,24(sp)
    80003640:	01013403          	ld	s0,16(sp)
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	02010113          	addi	sp,sp,32
    8000364c:	00008067          	ret

0000000080003650 <_Znam>:
void* operator new[] (size_t size) {
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00113423          	sd	ra,8(sp)
    80003658:	00813023          	sd	s0,0(sp)
    8000365c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	2c0080e7          	jalr	704(ra) # 80001920 <_Z9mem_allocm>
}
    80003668:	00813083          	ld	ra,8(sp)
    8000366c:	00013403          	ld	s0,0(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <_ZdaPv>:
void operator delete[] (void* addr) {
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00113423          	sd	ra,8(sp)
    80003680:	00813023          	sd	s0,0(sp)
    80003684:	01010413          	addi	s0,sp,16
    mem_free(addr);
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	2d8080e7          	jalr	728(ra) # 80001960 <_Z8mem_freePv>
}
    80003690:	00813083          	ld	ra,8(sp)
    80003694:	00013403          	ld	s0,0(sp)
    80003698:	01010113          	addi	sp,sp,16
    8000369c:	00008067          	ret

00000000800036a0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00113423          	sd	ra,8(sp)
    800036a8:	00813023          	sd	s0,0(sp)
    800036ac:	01010413          	addi	s0,sp,16
    800036b0:	00006797          	auipc	a5,0x6
    800036b4:	70878793          	addi	a5,a5,1800 # 80009db8 <_ZTV6Thread+0x10>
    800036b8:	00f53023          	sd	a5,0(a0)
    thread_create_CPP(&myHandle, body, arg);
    800036bc:	00850513          	addi	a0,a0,8
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	2ec080e7          	jalr	748(ra) # 800019ac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>
}
    800036c8:	00813083          	ld	ra,8(sp)
    800036cc:	00013403          	ld	s0,0(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <_ZN6Thread5startEv>:
    return myHandle->startIt();
    800036d8:	00853503          	ld	a0,8(a0)
        if (started) return -1;
    800036dc:	03454783          	lbu	a5,52(a0)
    800036e0:	02079c63          	bnez	a5,80003718 <_ZN6Thread5startEv+0x40>
int Thread::start() {
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	00813023          	sd	s0,0(sp)
    800036f0:	01010413          	addi	s0,sp,16
        started = true;
    800036f4:	00100793          	li	a5,1
    800036f8:	02f50a23          	sb	a5,52(a0)
        KScheduler::put(this);
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	8a8080e7          	jalr	-1880(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
        return 0;
    80003704:	00000513          	li	a0,0
}
    80003708:	00813083          	ld	ra,8(sp)
    8000370c:	00013403          	ld	s0,0(sp)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret
        if (started) return -1;
    80003718:	fff00513          	li	a0,-1
    8000371c:	00008067          	ret

0000000080003720 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00113423          	sd	ra,8(sp)
    80003728:	00813023          	sd	s0,0(sp)
    8000372c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	3c8080e7          	jalr	968(ra) # 80001af8 <_Z15thread_dispatchv>
}
    80003738:	00813083          	ld	ra,8(sp)
    8000373c:	00013403          	ld	s0,0(sp)
    80003740:	01010113          	addi	sp,sp,16
    80003744:	00008067          	ret

0000000080003748 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00113423          	sd	ra,8(sp)
    80003750:	00813023          	sd	s0,0(sp)
    80003754:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	490080e7          	jalr	1168(ra) # 80001be8 <_Z10time_sleepm>
}
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	00006797          	auipc	a5,0x6
    80003784:	63878793          	addi	a5,a5,1592 # 80009db8 <_ZTV6Thread+0x10>
    80003788:	00f53023          	sd	a5,0(a0)
    thread_create_CPP(&myHandle, &wrapper, this);
    8000378c:	00050613          	mv	a2,a0
    80003790:	00000597          	auipc	a1,0x0
    80003794:	d3458593          	addi	a1,a1,-716 # 800034c4 <_ZN6Thread7wrapperEPv>
    80003798:	00850513          	addi	a0,a0,8
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	210080e7          	jalr	528(ra) # 800019ac <_Z17thread_create_CPPPP4KPCBPFvPvES2_>
}
    800037a4:	00813083          	ld	ra,8(sp)
    800037a8:	00013403          	ld	s0,0(sp)
    800037ac:	01010113          	addi	sp,sp,16
    800037b0:	00008067          	ret

00000000800037b4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800037b4:	ff010113          	addi	sp,sp,-16
    800037b8:	00113423          	sd	ra,8(sp)
    800037bc:	00813023          	sd	s0,0(sp)
    800037c0:	01010413          	addi	s0,sp,16
    800037c4:	00006797          	auipc	a5,0x6
    800037c8:	61c78793          	addi	a5,a5,1564 # 80009de0 <_ZTV9Semaphore+0x10>
    800037cc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800037d0:	00850513          	addi	a0,a0,8
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	344080e7          	jalr	836(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>
}
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800037ec:	ff010113          	addi	sp,sp,-16
    800037f0:	00113423          	sd	ra,8(sp)
    800037f4:	00813023          	sd	s0,0(sp)
    800037f8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800037fc:	00853503          	ld	a0,8(a0)
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	378080e7          	jalr	888(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>
}
    80003808:	00813083          	ld	ra,8(sp)
    8000380c:	00013403          	ld	s0,0(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003828:	00853503          	ld	a0,8(a0)
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	394080e7          	jalr	916(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>
}
    80003834:	00813083          	ld	ra,8(sp)
    80003838:	00013403          	ld	s0,0(sp)
    8000383c:	01010113          	addi	sp,sp,16
    80003840:	00008067          	ret

0000000080003844 <_ZN7Console4getcEv>:
char Console::getc() {
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    return ::getc();
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	3bc080e7          	jalr	956(ra) # 80001c10 <_Z4getcv>
}
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN7Console4putcEc>:
void Console::putc(char c) {
    8000386c:	ff010113          	addi	sp,sp,-16
    80003870:	00113423          	sd	ra,8(sp)
    80003874:	00813023          	sd	s0,0(sp)
    80003878:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	3bc080e7          	jalr	956(ra) # 80001c38 <_Z4putcc>
}
    80003884:	00813083          	ld	ra,8(sp)
    80003888:	00013403          	ld	s0,0(sp)
    8000388c:	01010113          	addi	sp,sp,16
    80003890:	00008067          	ret

0000000080003894 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    80003894:	fe010113          	addi	sp,sp,-32
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00813823          	sd	s0,16(sp)
    800038a0:	00913423          	sd	s1,8(sp)
    800038a4:	01213023          	sd	s2,0(sp)
    800038a8:	02010413          	addi	s0,sp,32
    800038ac:	00050493          	mv	s1,a0
    800038b0:	00058913          	mv	s2,a1
    : Thread(&wrapperPeriodic, new pStruct({this, period})) {
    800038b4:	01000513          	li	a0,16
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	cc8080e7          	jalr	-824(ra) # 80003580 <_Znwm>
    800038c0:	00050613          	mv	a2,a0
    800038c4:	00953023          	sd	s1,0(a0)
    800038c8:	01253423          	sd	s2,8(a0)
    800038cc:	00000597          	auipc	a1,0x0
    800038d0:	c2c58593          	addi	a1,a1,-980 # 800034f8 <_ZN14PeriodicThread15wrapperPeriodicEPv>
    800038d4:	00048513          	mv	a0,s1
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	dc8080e7          	jalr	-568(ra) # 800036a0 <_ZN6ThreadC1EPFvPvES0_>
    800038e0:	00006797          	auipc	a5,0x6
    800038e4:	47878793          	addi	a5,a5,1144 # 80009d58 <_ZTV14PeriodicThread+0x10>
    800038e8:	00f4b023          	sd	a5,0(s1)
}
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN6KSleep6removeEv>:
#include "../h/KRiscv.hpp"

KPCB* KSleep::head = nullptr;

void KSleep::remove() {
    if (!head) return;
    80003904:	00006797          	auipc	a5,0x6
    80003908:	6747b783          	ld	a5,1652(a5) # 80009f78 <_ZN6KSleep4headE>
    8000390c:	06078c63          	beqz	a5,80003984 <_ZN6KSleep6removeEv+0x80>
    --(head->timeSleepCounter);
    80003910:	0507b703          	ld	a4,80(a5)
    80003914:	fff70713          	addi	a4,a4,-1
    80003918:	04e7b823          	sd	a4,80(a5)
    while (head && !(head->timeSleepCounter)) {
    8000391c:	00006517          	auipc	a0,0x6
    80003920:	65c53503          	ld	a0,1628(a0) # 80009f78 <_ZN6KSleep4headE>
    80003924:	06050063          	beqz	a0,80003984 <_ZN6KSleep6removeEv+0x80>
    80003928:	05053783          	ld	a5,80(a0)
    8000392c:	04079c63          	bnez	a5,80003984 <_ZN6KSleep6removeEv+0x80>
void KSleep::remove() {
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00113423          	sd	ra,8(sp)
    80003938:	00813023          	sd	s0,0(sp)
    8000393c:	01010413          	addi	s0,sp,16
    80003940:	00c0006f          	j	8000394c <_ZN6KSleep6removeEv+0x48>
    while (head && !(head->timeSleepCounter)) {
    80003944:	05053783          	ld	a5,80(a0)
    80003948:	02079663          	bnez	a5,80003974 <_ZN6KSleep6removeEv+0x70>
        KPCB* old = head;
        head = head->nextSleeping;
    8000394c:	04053783          	ld	a5,64(a0)
    80003950:	00006717          	auipc	a4,0x6
    80003954:	62f73423          	sd	a5,1576(a4) # 80009f78 <_ZN6KSleep4headE>
        old->nextSleeping = nullptr;
    80003958:	04053023          	sd	zero,64(a0)
    void setSleeping(bool val) { sleeping = val; }
    8000395c:	020508a3          	sb	zero,49(a0)
        old->setSleeping(false);
        KScheduler::put(old);
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	644080e7          	jalr	1604(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
    while (head && !(head->timeSleepCounter)) {
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	61053503          	ld	a0,1552(a0) # 80009f78 <_ZN6KSleep4headE>
    80003970:	fc051ae3          	bnez	a0,80003944 <_ZN6KSleep6removeEv+0x40>
    }
}
    80003974:	00813083          	ld	ra,8(sp)
    80003978:	00013403          	ld	s0,0(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret
    80003984:	00008067          	ret

0000000080003988 <_ZN6KSleep3addEm>:

void KSleep::add(time_t t) {
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    KPCB* kpcb = KPCB::running;
    80003994:	00006797          	auipc	a5,0x6
    80003998:	5247b783          	ld	a5,1316(a5) # 80009eb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000399c:	0007b603          	ld	a2,0(a5)
    if (!kpcb || !t) return;
    800039a0:	08060463          	beqz	a2,80003a28 <_ZN6KSleep3addEm+0xa0>
    800039a4:	08050263          	beqz	a0,80003a28 <_ZN6KSleep3addEm+0xa0>
    800039a8:	00100793          	li	a5,1
    800039ac:	02f608a3          	sb	a5,49(a2)
    kpcb->setSleeping(true);
    if (!head) {
    800039b0:	00006797          	auipc	a5,0x6
    800039b4:	5c87b783          	ld	a5,1480(a5) # 80009f78 <_ZN6KSleep4headE>
    800039b8:	02078463          	beqz	a5,800039e0 <_ZN6KSleep3addEm+0x58>
        head = kpcb;
        head->timeSleepCounter = t;
        head->nextSleeping = nullptr;
    }
    else {
        KPCB* curr = head, *prev = nullptr;
    800039bc:	00000593          	li	a1,0
        while (curr) {
    800039c0:	04078e63          	beqz	a5,80003a1c <_ZN6KSleep3addEm+0x94>
            long r = (long)t - (long)curr->timeSleepCounter;
    800039c4:	0507b703          	ld	a4,80(a5)
    800039c8:	40e506b3          	sub	a3,a0,a4
            if (r <= 0) {
    800039cc:	02d05463          	blez	a3,800039f4 <_ZN6KSleep3addEm+0x6c>
                kpcb->nextSleeping = curr;
                if (!prev) head = kpcb;
                else prev->nextSleeping = kpcb;
                return;
            }
            else t -= curr->timeSleepCounter;
    800039d0:	40e50533          	sub	a0,a0,a4
            prev = curr;
    800039d4:	00078593          	mv	a1,a5
            curr = curr->nextSleeping;
    800039d8:	0407b783          	ld	a5,64(a5)
        while (curr) {
    800039dc:	fe5ff06f          	j	800039c0 <_ZN6KSleep3addEm+0x38>
        head = kpcb;
    800039e0:	00006797          	auipc	a5,0x6
    800039e4:	58c7bc23          	sd	a2,1432(a5) # 80009f78 <_ZN6KSleep4headE>
        head->timeSleepCounter = t;
    800039e8:	04a63823          	sd	a0,80(a2)
        head->nextSleeping = nullptr;
    800039ec:	04063023          	sd	zero,64(a2)
    800039f0:	0380006f          	j	80003a28 <_ZN6KSleep3addEm+0xa0>
                curr->timeSleepCounter -= t;
    800039f4:	40a70733          	sub	a4,a4,a0
    800039f8:	04e7b823          	sd	a4,80(a5)
                kpcb->timeSleepCounter = t;
    800039fc:	04a63823          	sd	a0,80(a2)
                kpcb->nextSleeping = curr;
    80003a00:	04f63023          	sd	a5,64(a2)
                if (!prev) head = kpcb;
    80003a04:	00058663          	beqz	a1,80003a10 <_ZN6KSleep3addEm+0x88>
                else prev->nextSleeping = kpcb;
    80003a08:	04c5b023          	sd	a2,64(a1)
                return;
    80003a0c:	01c0006f          	j	80003a28 <_ZN6KSleep3addEm+0xa0>
                if (!prev) head = kpcb;
    80003a10:	00006797          	auipc	a5,0x6
    80003a14:	56c7b423          	sd	a2,1384(a5) # 80009f78 <_ZN6KSleep4headE>
    80003a18:	0100006f          	j	80003a28 <_ZN6KSleep3addEm+0xa0>
        }
        kpcb->timeSleepCounter = t;
    80003a1c:	04a63823          	sd	a0,80(a2)
        kpcb->nextSleeping = nullptr;
    80003a20:	04063023          	sd	zero,64(a2)
        prev->nextSleeping = kpcb;
    80003a24:	04c5b023          	sd	a2,64(a1)
    }
}
    80003a28:	00813403          	ld	s0,8(sp)
    80003a2c:	01010113          	addi	sp,sp,16
    80003a30:	00008067          	ret

0000000080003a34 <_Z23test_memory_thread_syncv>:

void test_thread();
void test_memory();
void test_semaphore();

void test_memory_thread_sync() {
    80003a34:	fe010113          	addi	sp,sp,-32
    80003a38:	00113c23          	sd	ra,24(sp)
    80003a3c:	00813823          	sd	s0,16(sp)
    80003a40:	00913423          	sd	s1,8(sp)
    80003a44:	02010413          	addi	s0,sp,32
    test_memory();
    80003a48:	00001097          	auipc	ra,0x1
    80003a4c:	8a8080e7          	jalr	-1880(ra) # 800042f0 <_Z11test_memoryv>
    test_memory();
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	8a0080e7          	jalr	-1888(ra) # 800042f0 <_Z11test_memoryv>
    test_thread();
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	ee4080e7          	jalr	-284(ra) # 8000293c <_Z11test_threadv>
    test_memory();
    80003a60:	00001097          	auipc	ra,0x1
    80003a64:	890080e7          	jalr	-1904(ra) # 800042f0 <_Z11test_memoryv>
    test_thread();
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	ed4080e7          	jalr	-300(ra) # 8000293c <_Z11test_threadv>
    test_thread();
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	ecc080e7          	jalr	-308(ra) # 8000293c <_Z11test_threadv>
    test_memory();
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	878080e7          	jalr	-1928(ra) # 800042f0 <_Z11test_memoryv>
    test_memory();
    80003a80:	00001097          	auipc	ra,0x1
    80003a84:	870080e7          	jalr	-1936(ra) # 800042f0 <_Z11test_memoryv>

    for (int i = 0; i < 100; i++)
    80003a88:	00000493          	li	s1,0
    80003a8c:	06300793          	li	a5,99
    80003a90:	0097ca63          	blt	a5,s1,80003aa4 <_Z23test_memory_thread_syncv+0x70>
        test_thread();
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	ea8080e7          	jalr	-344(ra) # 8000293c <_Z11test_threadv>
    for (int i = 0; i < 100; i++)
    80003a9c:	0014849b          	addiw	s1,s1,1
    80003aa0:	fedff06f          	j	80003a8c <_Z23test_memory_thread_syncv+0x58>
    for (int i = 0; i < 100; i++)
    80003aa4:	00000493          	li	s1,0
    80003aa8:	06300793          	li	a5,99
    80003aac:	0097ca63          	blt	a5,s1,80003ac0 <_Z23test_memory_thread_syncv+0x8c>
        test_memory();
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	840080e7          	jalr	-1984(ra) # 800042f0 <_Z11test_memoryv>
    for (int i = 0; i < 100; i++)
    80003ab8:	0014849b          	addiw	s1,s1,1
    80003abc:	fedff06f          	j	80003aa8 <_Z23test_memory_thread_syncv+0x74>
    for (int i = 0; i < 100; i++) {
    80003ac0:	00000493          	li	s1,0
    80003ac4:	06300793          	li	a5,99
    80003ac8:	0097ce63          	blt	a5,s1,80003ae4 <_Z23test_memory_thread_syncv+0xb0>
        test_thread();
    80003acc:	fffff097          	auipc	ra,0xfffff
    80003ad0:	e70080e7          	jalr	-400(ra) # 8000293c <_Z11test_threadv>
        test_memory();
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	81c080e7          	jalr	-2020(ra) # 800042f0 <_Z11test_memoryv>
    for (int i = 0; i < 100; i++) {
    80003adc:	0014849b          	addiw	s1,s1,1
    80003ae0:	fe5ff06f          	j	80003ac4 <_Z23test_memory_thread_syncv+0x90>
    }
    for (int i = 0; i < 100; i++) {
    80003ae4:	00000493          	li	s1,0
    80003ae8:	06300793          	li	a5,99
    80003aec:	0097ce63          	blt	a5,s1,80003b08 <_Z23test_memory_thread_syncv+0xd4>
        test_memory();
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	800080e7          	jalr	-2048(ra) # 800042f0 <_Z11test_memoryv>
        test_thread();
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	e44080e7          	jalr	-444(ra) # 8000293c <_Z11test_threadv>
    for (int i = 0; i < 100; i++) {
    80003b00:	0014849b          	addiw	s1,s1,1
    80003b04:	fe5ff06f          	j	80003ae8 <_Z23test_memory_thread_syncv+0xb4>
    }
}
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	02010113          	addi	sp,sp,32
    80003b18:	00008067          	ret

0000000080003b1c <_Z33test_memory_thread_sync_semaphorev>:
void test_memory_thread_sync_semaphore() {
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00113c23          	sd	ra,24(sp)
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    test_semaphore();
    80003b30:	00001097          	auipc	ra,0x1
    80003b34:	b68080e7          	jalr	-1176(ra) # 80004698 <_Z14test_semaphorev>
    test_memory();
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	7b8080e7          	jalr	1976(ra) # 800042f0 <_Z11test_memoryv>
    test_memory();
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	7b0080e7          	jalr	1968(ra) # 800042f0 <_Z11test_memoryv>
    test_thread();
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	df4080e7          	jalr	-524(ra) # 8000293c <_Z11test_threadv>
    test_memory();
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	7a0080e7          	jalr	1952(ra) # 800042f0 <_Z11test_memoryv>
    test_thread();
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	de4080e7          	jalr	-540(ra) # 8000293c <_Z11test_threadv>
    test_thread();
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	ddc080e7          	jalr	-548(ra) # 8000293c <_Z11test_threadv>
    test_semaphore();
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	b30080e7          	jalr	-1232(ra) # 80004698 <_Z14test_semaphorev>
    test_semaphore();
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	b28080e7          	jalr	-1240(ra) # 80004698 <_Z14test_semaphorev>
    test_memory();
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	778080e7          	jalr	1912(ra) # 800042f0 <_Z11test_memoryv>
    test_memory();
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	770080e7          	jalr	1904(ra) # 800042f0 <_Z11test_memoryv>

    for (int i = 0; i < 100; i++)
    80003b88:	00000493          	li	s1,0
    80003b8c:	06300793          	li	a5,99
    80003b90:	0097ca63          	blt	a5,s1,80003ba4 <_Z33test_memory_thread_sync_semaphorev+0x88>
        test_thread();
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	da8080e7          	jalr	-600(ra) # 8000293c <_Z11test_threadv>
    for (int i = 0; i < 100; i++)
    80003b9c:	0014849b          	addiw	s1,s1,1
    80003ba0:	fedff06f          	j	80003b8c <_Z33test_memory_thread_sync_semaphorev+0x70>
    for (int i = 0; i < 100; i++)
    80003ba4:	00000493          	li	s1,0
    80003ba8:	06300793          	li	a5,99
    80003bac:	0097ca63          	blt	a5,s1,80003bc0 <_Z33test_memory_thread_sync_semaphorev+0xa4>
        test_memory();
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	740080e7          	jalr	1856(ra) # 800042f0 <_Z11test_memoryv>
    for (int i = 0; i < 100; i++)
    80003bb8:	0014849b          	addiw	s1,s1,1
    80003bbc:	fedff06f          	j	80003ba8 <_Z33test_memory_thread_sync_semaphorev+0x8c>
    for (int i = 0; i < 100; i++)
    80003bc0:	00000493          	li	s1,0
    80003bc4:	06300793          	li	a5,99
    80003bc8:	0097ca63          	blt	a5,s1,80003bdc <_Z33test_memory_thread_sync_semaphorev+0xc0>
        test_semaphore();
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	acc080e7          	jalr	-1332(ra) # 80004698 <_Z14test_semaphorev>
    for (int i = 0; i < 100; i++)
    80003bd4:	0014849b          	addiw	s1,s1,1
    80003bd8:	fedff06f          	j	80003bc4 <_Z33test_memory_thread_sync_semaphorev+0xa8>
    for (int i = 0; i < 100; i++) {
    80003bdc:	00000493          	li	s1,0
    80003be0:	06300793          	li	a5,99
    80003be4:	0297c263          	blt	a5,s1,80003c08 <_Z33test_memory_thread_sync_semaphorev+0xec>
        test_thread();
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	d54080e7          	jalr	-684(ra) # 8000293c <_Z11test_threadv>
        test_semaphore();
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	aa8080e7          	jalr	-1368(ra) # 80004698 <_Z14test_semaphorev>
        test_memory();
    80003bf8:	00000097          	auipc	ra,0x0
    80003bfc:	6f8080e7          	jalr	1784(ra) # 800042f0 <_Z11test_memoryv>
    for (int i = 0; i < 100; i++) {
    80003c00:	0014849b          	addiw	s1,s1,1
    80003c04:	fddff06f          	j	80003be0 <_Z33test_memory_thread_sync_semaphorev+0xc4>
    }
    for (int i = 0; i < 100; i++) {
    80003c08:	00000493          	li	s1,0
    80003c0c:	06300793          	li	a5,99
    80003c10:	0297c263          	blt	a5,s1,80003c34 <_Z33test_memory_thread_sync_semaphorev+0x118>
        test_memory();
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	6dc080e7          	jalr	1756(ra) # 800042f0 <_Z11test_memoryv>
        test_semaphore();
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	a7c080e7          	jalr	-1412(ra) # 80004698 <_Z14test_semaphorev>
        test_thread();
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	d18080e7          	jalr	-744(ra) # 8000293c <_Z11test_threadv>
    for (int i = 0; i < 100; i++) {
    80003c2c:	0014849b          	addiw	s1,s1,1
    80003c30:	fddff06f          	j	80003c0c <_Z33test_memory_thread_sync_semaphorev+0xf0>
    }
    for (int i = 0; i < 100; i++) {
    80003c34:	00000493          	li	s1,0
    80003c38:	06300793          	li	a5,99
    80003c3c:	0297ca63          	blt	a5,s1,80003c70 <_Z33test_memory_thread_sync_semaphorev+0x154>
        test_semaphore();
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	a58080e7          	jalr	-1448(ra) # 80004698 <_Z14test_semaphorev>
        test_memory();
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	6a8080e7          	jalr	1704(ra) # 800042f0 <_Z11test_memoryv>
        test_semaphore();
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	a48080e7          	jalr	-1464(ra) # 80004698 <_Z14test_semaphorev>
        test_thread();
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	ce4080e7          	jalr	-796(ra) # 8000293c <_Z11test_threadv>
        test_semaphore();
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	a38080e7          	jalr	-1480(ra) # 80004698 <_Z14test_semaphorev>
    for (int i = 0; i < 100; i++) {
    80003c68:	0014849b          	addiw	s1,s1,1
    80003c6c:	fcdff06f          	j	80003c38 <_Z33test_memory_thread_sync_semaphorev+0x11c>
    }
}
    80003c70:	01813083          	ld	ra,24(sp)
    80003c74:	01013403          	ld	s0,16(sp)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret

0000000080003c84 <_Z12test_complexv>:

void test_complex() {
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00113423          	sd	ra,8(sp)
    80003c8c:	00813023          	sd	s0,0(sp)
    80003c90:	01010413          	addi	s0,sp,16
    //test_memory_thread_sync();
    test_memory_thread_sync_semaphore();
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	e88080e7          	jalr	-376(ra) # 80003b1c <_Z33test_memory_thread_sync_semaphorev>
    80003c9c:	00813083          	ld	ra,8(sp)
    80003ca0:	00013403          	ld	s0,0(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret

0000000080003cac <_Z12test_memory1v>:
// Created by os on 6/22/22.
//

#include "../h/syscall_c.h"

void test_memory1() {
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	01213023          	sd	s2,0(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    char* z = new char;
    80003cc4:	00100513          	li	a0,1
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	8b8080e7          	jalr	-1864(ra) # 80003580 <_Znwm>
    80003cd0:	00050493          	mv	s1,a0
    *z = 'z';
    80003cd4:	07a00793          	li	a5,122
    80003cd8:	00f50023          	sb	a5,0(a0)
    putc(*z);
    80003cdc:	07a00513          	li	a0,122
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	f58080e7          	jalr	-168(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003ce8:	00a00513          	li	a0,10
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	f4c080e7          	jalr	-180(ra) # 80001c38 <_Z4putcc>
    delete z;
    80003cf4:	00048863          	beqz	s1,80003d04 <_Z12test_memory1v+0x58>
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	8ac080e7          	jalr	-1876(ra) # 800035a8 <_ZdlPv>
    char* a = new char;
    80003d04:	00100513          	li	a0,1
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	878080e7          	jalr	-1928(ra) # 80003580 <_Znwm>
    80003d10:	00050913          	mv	s2,a0
    *a = 'a';
    80003d14:	06100793          	li	a5,97
    80003d18:	00f50023          	sb	a5,0(a0)
    putc(*a);
    80003d1c:	06100513          	li	a0,97
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	f18080e7          	jalr	-232(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003d28:	00a00513          	li	a0,10
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	f0c080e7          	jalr	-244(ra) # 80001c38 <_Z4putcc>
    char* b = new char;
    80003d34:	00100513          	li	a0,1
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	848080e7          	jalr	-1976(ra) # 80003580 <_Znwm>
    80003d40:	00050493          	mv	s1,a0
    *b = 'b';
    80003d44:	06200793          	li	a5,98
    80003d48:	00f50023          	sb	a5,0(a0)
    putc(*b);
    80003d4c:	06200513          	li	a0,98
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	ee8080e7          	jalr	-280(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003d58:	00a00513          	li	a0,10
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	edc080e7          	jalr	-292(ra) # 80001c38 <_Z4putcc>
    delete a;
    80003d64:	00090863          	beqz	s2,80003d74 <_Z12test_memory1v+0xc8>
    80003d68:	00090513          	mv	a0,s2
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	83c080e7          	jalr	-1988(ra) # 800035a8 <_ZdlPv>
    char* c = new char;
    80003d74:	00100513          	li	a0,1
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	808080e7          	jalr	-2040(ra) # 80003580 <_Znwm>
    80003d80:	00050913          	mv	s2,a0
    *c = 'c';
    80003d84:	06300793          	li	a5,99
    80003d88:	00f50023          	sb	a5,0(a0)
    putc(*c);
    80003d8c:	06300513          	li	a0,99
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	ea8080e7          	jalr	-344(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003d98:	00a00513          	li	a0,10
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	e9c080e7          	jalr	-356(ra) # 80001c38 <_Z4putcc>
    delete c;
    80003da4:	00090863          	beqz	s2,80003db4 <_Z12test_memory1v+0x108>
    80003da8:	00090513          	mv	a0,s2
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	7fc080e7          	jalr	2044(ra) # 800035a8 <_ZdlPv>
    char* d = new char;
    80003db4:	00100513          	li	a0,1
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	7c8080e7          	jalr	1992(ra) # 80003580 <_Znwm>
    80003dc0:	00050913          	mv	s2,a0
    *d = 'd';
    80003dc4:	06400793          	li	a5,100
    80003dc8:	00f50023          	sb	a5,0(a0)
    putc(*d);
    80003dcc:	06400513          	li	a0,100
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	e68080e7          	jalr	-408(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003dd8:	00a00513          	li	a0,10
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	e5c080e7          	jalr	-420(ra) # 80001c38 <_Z4putcc>
    delete d;
    80003de4:	00090863          	beqz	s2,80003df4 <_Z12test_memory1v+0x148>
    80003de8:	00090513          	mv	a0,s2
    80003dec:	fffff097          	auipc	ra,0xfffff
    80003df0:	7bc080e7          	jalr	1980(ra) # 800035a8 <_ZdlPv>
    delete b;
    80003df4:	00048863          	beqz	s1,80003e04 <_Z12test_memory1v+0x158>
    80003df8:	00048513          	mv	a0,s1
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	7ac080e7          	jalr	1964(ra) # 800035a8 <_ZdlPv>
    char* e = new char[5];
    80003e04:	00500513          	li	a0,5
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	848080e7          	jalr	-1976(ra) # 80003650 <_Znam>
    80003e10:	00050913          	mv	s2,a0
    *(e+0) = 'p';
    80003e14:	07000793          	li	a5,112
    80003e18:	00f50023          	sb	a5,0(a0)
    *(e+1) = 'e';
    80003e1c:	06500793          	li	a5,101
    80003e20:	00f500a3          	sb	a5,1(a0)
    *(e+2) = 'd';
    80003e24:	06400793          	li	a5,100
    80003e28:	00f50123          	sb	a5,2(a0)
    *(e+3) = 'j';
    80003e2c:	06a00793          	li	a5,106
    80003e30:	00f501a3          	sb	a5,3(a0)
    *(e+4) = 'a';
    80003e34:	06100793          	li	a5,97
    80003e38:	00f50223          	sb	a5,4(a0)
    for (int i = 0; i < 5; i++)
    80003e3c:	00000493          	li	s1,0
    80003e40:	00400793          	li	a5,4
    80003e44:	0097ce63          	blt	a5,s1,80003e60 <_Z12test_memory1v+0x1b4>
        putc(*(e+i));
    80003e48:	009907b3          	add	a5,s2,s1
    80003e4c:	0007c503          	lbu	a0,0(a5)
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	de8080e7          	jalr	-536(ra) # 80001c38 <_Z4putcc>
    for (int i = 0; i < 5; i++)
    80003e58:	0014849b          	addiw	s1,s1,1
    80003e5c:	fe5ff06f          	j	80003e40 <_Z12test_memory1v+0x194>
    putc('\n');
    80003e60:	00a00513          	li	a0,10
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	dd4080e7          	jalr	-556(ra) # 80001c38 <_Z4putcc>
    delete[] e;
    80003e6c:	00090863          	beqz	s2,80003e7c <_Z12test_memory1v+0x1d0>
    80003e70:	00090513          	mv	a0,s2
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	804080e7          	jalr	-2044(ra) # 80003678 <_ZdaPv>
    char* f = new char();
    80003e7c:	00100513          	li	a0,1
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	700080e7          	jalr	1792(ra) # 80003580 <_Znwm>
    80003e88:	00050493          	mv	s1,a0
    *f = 'f';
    80003e8c:	06600793          	li	a5,102
    80003e90:	00f50023          	sb	a5,0(a0)
    putc(*f);
    80003e94:	06600513          	li	a0,102
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	da0080e7          	jalr	-608(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80003ea0:	00a00513          	li	a0,10
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	d94080e7          	jalr	-620(ra) # 80001c38 <_Z4putcc>
    delete f;
    80003eac:	00048863          	beqz	s1,80003ebc <_Z12test_memory1v+0x210>
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	6f4080e7          	jalr	1780(ra) # 800035a8 <_ZdlPv>
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z12test_memory2v>:
void test_memory2() {
    80003ed4:	fd010113          	addi	sp,sp,-48
    80003ed8:	02113423          	sd	ra,40(sp)
    80003edc:	02813023          	sd	s0,32(sp)
    80003ee0:	00913c23          	sd	s1,24(sp)
    80003ee4:	01213823          	sd	s2,16(sp)
    80003ee8:	01313423          	sd	s3,8(sp)
    80003eec:	01413023          	sd	s4,0(sp)
    80003ef0:	03010413          	addi	s0,sp,48
    char* charPtr = (char*)mem_alloc(sizeof(char));
    80003ef4:	00100513          	li	a0,1
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	a28080e7          	jalr	-1496(ra) # 80001920 <_Z9mem_allocm>
    80003f00:	00050493          	mv	s1,a0
    *charPtr = 'C';
    80003f04:	04300793          	li	a5,67
    80003f08:	00f50023          	sb	a5,0(a0)
    putc(*charPtr); putc(' ');
    80003f0c:	04300513          	li	a0,67
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	d28080e7          	jalr	-728(ra) # 80001c38 <_Z4putcc>
    80003f18:	02000513          	li	a0,32
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	d1c080e7          	jalr	-740(ra) # 80001c38 <_Z4putcc>
    int status = mem_free(charPtr);
    80003f24:	00048513          	mv	a0,s1
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	a38080e7          	jalr	-1480(ra) # 80001960 <_Z8mem_freePv>
    if (status == 0) putc('1');
    80003f30:	1a051c63          	bnez	a0,800040e8 <_Z12test_memory2v+0x214>
    80003f34:	03100513          	li	a0,49
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	d00080e7          	jalr	-768(ra) # 80001c38 <_Z4putcc>
    else putc('0');
    putc('\n');
    80003f40:	00a00513          	li	a0,10
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	cf4080e7          	jalr	-780(ra) # 80001c38 <_Z4putcc>

    char* ptr = (char*) mem_alloc(68 * sizeof(char));
    80003f4c:	04400513          	li	a0,68
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	9d0080e7          	jalr	-1584(ra) # 80001920 <_Z9mem_allocm>
    80003f58:	00050913          	mv	s2,a0
    ptr[0] = 'N'; ptr[1] = 'i'; ptr[2] = 'k'; ptr[3] = 'o'; ptr[4] = 'l'; ptr[5] = 'a'; ptr[6] = ' '; ptr[7] = 'm';
    80003f5c:	04e00993          	li	s3,78
    80003f60:	01350023          	sb	s3,0(a0)
    80003f64:	06900713          	li	a4,105
    80003f68:	00e500a3          	sb	a4,1(a0)
    80003f6c:	06b00493          	li	s1,107
    80003f70:	00950123          	sb	s1,2(a0)
    80003f74:	06f00313          	li	t1,111
    80003f78:	006501a3          	sb	t1,3(a0)
    80003f7c:	06c00393          	li	t2,108
    80003f80:	00750223          	sb	t2,4(a0)
    80003f84:	06100813          	li	a6,97
    80003f88:	010502a3          	sb	a6,5(a0)
    80003f8c:	02000693          	li	a3,32
    80003f90:	00d50323          	sb	a3,6(a0)
    80003f94:	06d00613          	li	a2,109
    80003f98:	00c503a3          	sb	a2,7(a0)
    ptr[8] = 'r'; ptr[9] = 'z'; ptr[10] = 'i'; ptr[11] = ' '; ptr[12] = 'o'; ptr[13] = 'p'; ptr[14] = 'e'; ptr[15] = 'r';
    80003f9c:	07200893          	li	a7,114
    80003fa0:	01150423          	sb	a7,8(a0)
    80003fa4:	07a00293          	li	t0,122
    80003fa8:	005504a3          	sb	t0,9(a0)
    80003fac:	00e50523          	sb	a4,10(a0)
    80003fb0:	00d505a3          	sb	a3,11(a0)
    80003fb4:	00650623          	sb	t1,12(a0)
    80003fb8:	07000f93          	li	t6,112
    80003fbc:	01f506a3          	sb	t6,13(a0)
    80003fc0:	06500793          	li	a5,101
    80003fc4:	00f50723          	sb	a5,14(a0)
    80003fc8:	011507a3          	sb	a7,15(a0)
    ptr[16] = 'a'; ptr[17] = 't'; ptr[18] = 'i'; ptr[19] = 'v'; ptr[20] = 'n'; ptr[21] = 'e'; ptr[22] = ' '; ptr[23] = 's';
    80003fcc:	01050823          	sb	a6,16(a0)
    80003fd0:	07400593          	li	a1,116
    80003fd4:	00b508a3          	sb	a1,17(a0)
    80003fd8:	00e50923          	sb	a4,18(a0)
    80003fdc:	07600f13          	li	t5,118
    80003fe0:	01e509a3          	sb	t5,19(a0)
    80003fe4:	06e00e93          	li	t4,110
    80003fe8:	01d50a23          	sb	t4,20(a0)
    80003fec:	00f50aa3          	sb	a5,21(a0)
    80003ff0:	00d50b23          	sb	a3,22(a0)
    80003ff4:	07300513          	li	a0,115
    80003ff8:	00a90ba3          	sb	a0,23(s2)
    ptr[24] = 'i'; ptr[25] = 's'; ptr[26] = 't'; ptr[27] = 'e'; ptr[28] = 'm'; ptr[29] = 'e'; ptr[30] = '!';
    80003ffc:	00e90c23          	sb	a4,24(s2)
    80004000:	00a90ca3          	sb	a0,25(s2)
    80004004:	00b90d23          	sb	a1,26(s2)
    80004008:	00f90da3          	sb	a5,27(s2)
    8000400c:	00c90e23          	sb	a2,28(s2)
    80004010:	00f90ea3          	sb	a5,29(s2)
    80004014:	02100e13          	li	t3,33
    80004018:	01c90f23          	sb	t3,30(s2)

    ptr[31] = 'N'; ptr[32] = 'i'; ptr[33] = 'k'; ptr[34] = 'o'; ptr[35] = 'l'; ptr[36] = 'a'; ptr[37] = ' '; ptr[38] = 'm';
    8000401c:	01390fa3          	sb	s3,31(s2)
    80004020:	02e90023          	sb	a4,32(s2)
    80004024:	029900a3          	sb	s1,33(s2)
    80004028:	02690123          	sb	t1,34(s2)
    8000402c:	027901a3          	sb	t2,35(s2)
    80004030:	03090223          	sb	a6,36(s2)
    80004034:	02d902a3          	sb	a3,37(s2)
    80004038:	02c90323          	sb	a2,38(s2)
    ptr[39] = 'r'; ptr[40] = 'z'; ptr[41] = 'i'; ptr[42] = ' '; ptr[43] = 'o'; ptr[44] = 'p'; ptr[45] = 'e'; ptr[46] = 'r';
    8000403c:	031903a3          	sb	a7,39(s2)
    80004040:	02590423          	sb	t0,40(s2)
    80004044:	02e904a3          	sb	a4,41(s2)
    80004048:	02d90523          	sb	a3,42(s2)
    8000404c:	026905a3          	sb	t1,43(s2)
    80004050:	03f90623          	sb	t6,44(s2)
    80004054:	02f906a3          	sb	a5,45(s2)
    80004058:	03190723          	sb	a7,46(s2)
    ptr[47] = 'a'; ptr[48] = 't'; ptr[49] = 'i'; ptr[50] = 'v'; ptr[51] = 'n'; ptr[52] = 'e'; ptr[53] = ' '; ptr[54] = 's';
    8000405c:	030907a3          	sb	a6,47(s2)
    80004060:	02b90823          	sb	a1,48(s2)
    80004064:	02e908a3          	sb	a4,49(s2)
    80004068:	03e90923          	sb	t5,50(s2)
    8000406c:	03d909a3          	sb	t4,51(s2)
    80004070:	02f90a23          	sb	a5,52(s2)
    80004074:	02d90aa3          	sb	a3,53(s2)
    80004078:	02a90b23          	sb	a0,54(s2)
    ptr[55] = 'i'; ptr[56] = 's'; ptr[57] = 't'; ptr[58] = 'e'; ptr[59] = 'm'; ptr[60] = 'e'; ptr[61] = '!';
    8000407c:	02e90ba3          	sb	a4,55(s2)
    80004080:	02a90c23          	sb	a0,56(s2)
    80004084:	02b90ca3          	sb	a1,57(s2)
    80004088:	02f90d23          	sb	a5,58(s2)
    8000408c:	02c90da3          	sb	a2,59(s2)
    80004090:	02f90e23          	sb	a5,60(s2)
    80004094:	03c90ea3          	sb	t3,61(s2)
    ptr[62] = 'U'; ptr[63] = 'Z'; ptr[64] = 'X'; ptr[65] = 'A'; ptr[66] = 'S'; ptr[67] = '!';
    80004098:	05500793          	li	a5,85
    8000409c:	02f90f23          	sb	a5,62(s2)
    800040a0:	05a00793          	li	a5,90
    800040a4:	02f90fa3          	sb	a5,63(s2)
    800040a8:	05800793          	li	a5,88
    800040ac:	04f90023          	sb	a5,64(s2)
    800040b0:	04100793          	li	a5,65
    800040b4:	04f900a3          	sb	a5,65(s2)
    800040b8:	05300793          	li	a5,83
    800040bc:	04f90123          	sb	a5,66(s2)
    800040c0:	05c901a3          	sb	t3,67(s2)

    for (int i = 0; i < 68; i++)
    800040c4:	00000493          	li	s1,0
    800040c8:	04300793          	li	a5,67
    800040cc:	0297c663          	blt	a5,s1,800040f8 <_Z12test_memory2v+0x224>
        putc(ptr[i]);
    800040d0:	009907b3          	add	a5,s2,s1
    800040d4:	0007c503          	lbu	a0,0(a5)
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	b60080e7          	jalr	-1184(ra) # 80001c38 <_Z4putcc>
    for (int i = 0; i < 68; i++)
    800040e0:	0014849b          	addiw	s1,s1,1
    800040e4:	fe5ff06f          	j	800040c8 <_Z12test_memory2v+0x1f4>
    else putc('0');
    800040e8:	03000513          	li	a0,48
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	b4c080e7          	jalr	-1204(ra) # 80001c38 <_Z4putcc>
    800040f4:	e4dff06f          	j	80003f40 <_Z12test_memory2v+0x6c>
    putc('\n');
    800040f8:	00a00513          	li	a0,10
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	b3c080e7          	jalr	-1220(ra) # 80001c38 <_Z4putcc>
    mem_free(ptr);
    80004104:	00090513          	mv	a0,s2
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	858080e7          	jalr	-1960(ra) # 80001960 <_Z8mem_freePv>

    uint64* intPtr = (uint64*)mem_alloc(5 * sizeof(uint64));
    80004110:	02800513          	li	a0,40
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	80c080e7          	jalr	-2036(ra) # 80001920 <_Z9mem_allocm>
    8000411c:	00050a13          	mv	s4,a0
    *(intPtr + 0) = 5;
    80004120:	00500793          	li	a5,5
    80004124:	00f53023          	sd	a5,0(a0)
    *(intPtr + 1) = 27;
    80004128:	01b00793          	li	a5,27
    8000412c:	00f53423          	sd	a5,8(a0)
    *(intPtr + 2) = 45;
    80004130:	02d00793          	li	a5,45
    80004134:	00f53823          	sd	a5,16(a0)
    *(intPtr + 3) = 192;
    80004138:	0c000793          	li	a5,192
    8000413c:	00f53c23          	sd	a5,24(a0)
    *(intPtr + 4) = 255;
    80004140:	0ff00793          	li	a5,255
    80004144:	02f53023          	sd	a5,32(a0)
    for (int i = 0; i < 5; i++) {
    80004148:	00000993          	li	s3,0
    8000414c:	0140006f          	j	80004160 <_Z12test_memory2v+0x28c>
        uint64 ceo = intPtr[i];
        while (ceo > 0) {
            putc(48 + ceo%10);
            ceo /= 10;
        }
        putc('\n');
    80004150:	00a00513          	li	a0,10
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	ae4080e7          	jalr	-1308(ra) # 80001c38 <_Z4putcc>
    for (int i = 0; i < 5; i++) {
    8000415c:	0019899b          	addiw	s3,s3,1
    80004160:	00400793          	li	a5,4
    80004164:	0537cc63          	blt	a5,s3,800041bc <_Z12test_memory2v+0x2e8>
        putc(48 + i);
    80004168:	0309851b          	addiw	a0,s3,48
    8000416c:	0ff57513          	andi	a0,a0,255
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	ac8080e7          	jalr	-1336(ra) # 80001c38 <_Z4putcc>
        putc('.');
    80004178:	02e00513          	li	a0,46
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	abc080e7          	jalr	-1348(ra) # 80001c38 <_Z4putcc>
        putc(' ');
    80004184:	02000513          	li	a0,32
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	ab0080e7          	jalr	-1360(ra) # 80001c38 <_Z4putcc>
        uint64 ceo = intPtr[i];
    80004190:	00399793          	slli	a5,s3,0x3
    80004194:	00fa07b3          	add	a5,s4,a5
    80004198:	0007b483          	ld	s1,0(a5)
        while (ceo > 0) {
    8000419c:	fa048ae3          	beqz	s1,80004150 <_Z12test_memory2v+0x27c>
            putc(48 + ceo%10);
    800041a0:	00a00913          	li	s2,10
    800041a4:	0324f533          	remu	a0,s1,s2
    800041a8:	03050513          	addi	a0,a0,48
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	a8c080e7          	jalr	-1396(ra) # 80001c38 <_Z4putcc>
            ceo /= 10;
    800041b4:	0324d4b3          	divu	s1,s1,s2
        while (ceo > 0) {
    800041b8:	fe5ff06f          	j	8000419c <_Z12test_memory2v+0x2c8>
    }
    mem_free(intPtr);
    800041bc:	000a0513          	mv	a0,s4
    800041c0:	ffffd097          	auipc	ra,0xffffd
    800041c4:	7a0080e7          	jalr	1952(ra) # 80001960 <_Z8mem_freePv>

    char* newPtr = (char*)new char(1); // 1 blok = 64 bajtova
    800041c8:	00100513          	li	a0,1
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	3b4080e7          	jalr	948(ra) # 80003580 <_Znwm>
    800041d4:	00050913          	mv	s2,a0
    newPtr[0] = 'O'; newPtr[1] = 'K'; newPtr[2] = '.';
    800041d8:	04f00793          	li	a5,79
    800041dc:	00f50023          	sb	a5,0(a0)
    800041e0:	04b00793          	li	a5,75
    800041e4:	00f500a3          	sb	a5,1(a0)
    800041e8:	02e00793          	li	a5,46
    800041ec:	00f50123          	sb	a5,2(a0)
    for (int i = 0; i < 3; i++)
    800041f0:	00000493          	li	s1,0
    800041f4:	00200793          	li	a5,2
    800041f8:	0097ce63          	blt	a5,s1,80004214 <_Z12test_memory2v+0x340>
        putc(newPtr[i]);
    800041fc:	009907b3          	add	a5,s2,s1
    80004200:	0007c503          	lbu	a0,0(a5)
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	a34080e7          	jalr	-1484(ra) # 80001c38 <_Z4putcc>
    for (int i = 0; i < 3; i++)
    8000420c:	0014849b          	addiw	s1,s1,1
    80004210:	fe5ff06f          	j	800041f4 <_Z12test_memory2v+0x320>
    putc('\n');
    80004214:	00a00513          	li	a0,10
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	a20080e7          	jalr	-1504(ra) # 80001c38 <_Z4putcc>
    delete(newPtr);
    80004220:	00090863          	beqz	s2,80004230 <_Z12test_memory2v+0x35c>
    80004224:	00090513          	mv	a0,s2
    80004228:	fffff097          	auipc	ra,0xfffff
    8000422c:	380080e7          	jalr	896(ra) # 800035a8 <_ZdlPv>

    newPtr = (char*)new char(1);
    80004230:	00100513          	li	a0,1
    80004234:	fffff097          	auipc	ra,0xfffff
    80004238:	34c080e7          	jalr	844(ra) # 80003580 <_Znwm>
    8000423c:	00050493          	mv	s1,a0
    *newPtr = 'A';
    80004240:	04100793          	li	a5,65
    80004244:	00f50023          	sb	a5,0(a0)
    putc(*newPtr);
    80004248:	04100513          	li	a0,65
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	9ec080e7          	jalr	-1556(ra) # 80001c38 <_Z4putcc>
    delete(newPtr);
    80004254:	00048863          	beqz	s1,80004264 <_Z12test_memory2v+0x390>
    80004258:	00048513          	mv	a0,s1
    8000425c:	fffff097          	auipc	ra,0xfffff
    80004260:	34c080e7          	jalr	844(ra) # 800035a8 <_ZdlPv>
    *newPtr = 'B';
    80004264:	04200793          	li	a5,66
    80004268:	00f48023          	sb	a5,0(s1)
    putc(*newPtr);
    8000426c:	04200513          	li	a0,66
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	9c8080e7          	jalr	-1592(ra) # 80001c38 <_Z4putcc>
    delete(newPtr);
    80004278:	00048863          	beqz	s1,80004288 <_Z12test_memory2v+0x3b4>
    8000427c:	00048513          	mv	a0,s1
    80004280:	fffff097          	auipc	ra,0xfffff
    80004284:	328080e7          	jalr	808(ra) # 800035a8 <_ZdlPv>
    *newPtr = 'C';
    80004288:	04300793          	li	a5,67
    8000428c:	00f48023          	sb	a5,0(s1)
    putc(*newPtr);
    80004290:	04300513          	li	a0,67
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	9a4080e7          	jalr	-1628(ra) # 80001c38 <_Z4putcc>
    delete(newPtr);
    8000429c:	00048863          	beqz	s1,800042ac <_Z12test_memory2v+0x3d8>
    800042a0:	00048513          	mv	a0,s1
    800042a4:	fffff097          	auipc	ra,0xfffff
    800042a8:	304080e7          	jalr	772(ra) # 800035a8 <_ZdlPv>

    putc('\n');
    800042ac:	00a00513          	li	a0,10
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	988080e7          	jalr	-1656(ra) # 80001c38 <_Z4putcc>
    putc('*');
    800042b8:	02a00513          	li	a0,42
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	97c080e7          	jalr	-1668(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    800042c4:	00a00513          	li	a0,10
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	970080e7          	jalr	-1680(ra) # 80001c38 <_Z4putcc>
}
    800042d0:	02813083          	ld	ra,40(sp)
    800042d4:	02013403          	ld	s0,32(sp)
    800042d8:	01813483          	ld	s1,24(sp)
    800042dc:	01013903          	ld	s2,16(sp)
    800042e0:	00813983          	ld	s3,8(sp)
    800042e4:	00013a03          	ld	s4,0(sp)
    800042e8:	03010113          	addi	sp,sp,48
    800042ec:	00008067          	ret

00000000800042f0 <_Z11test_memoryv>:

void test_memory() {
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00113423          	sd	ra,8(sp)
    800042f8:	00813023          	sd	s0,0(sp)
    800042fc:	01010413          	addi	s0,sp,16
    test_memory1();
    80004300:	00000097          	auipc	ra,0x0
    80004304:	9ac080e7          	jalr	-1620(ra) # 80003cac <_Z12test_memory1v>
    test_memory2();
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	bcc080e7          	jalr	-1076(ra) # 80003ed4 <_Z12test_memory2v>
}
    80004310:	00813083          	ld	ra,8(sp)
    80004314:	00013403          	ld	s0,0(sp)
    80004318:	01010113          	addi	sp,sp,16
    8000431c:	00008067          	ret

0000000080004320 <_Z10increment1Pv>:
#include "../h/syscall_c.h"

int changeIt = 0;
KSemaphore* mutex = nullptr;

void increment1(void* arg) {
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00813823          	sd	s0,16(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	01213023          	sd	s2,0(sp)
    80004334:	02010413          	addi	s0,sp,32
    sem_wait(mutex);
    80004338:	00006497          	auipc	s1,0x6
    8000433c:	c4848493          	addi	s1,s1,-952 # 80009f80 <mutex>
    80004340:	0004b503          	ld	a0,0(s1)
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	834080e7          	jalr	-1996(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>
    int tmp = changeIt;
    8000434c:	0084a903          	lw	s2,8(s1)
    ++tmp;
    80004350:	0019091b          	addiw	s2,s2,1
    thread_dispatch();
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	7a4080e7          	jalr	1956(ra) # 80001af8 <_Z15thread_dispatchv>
    sem_close(mutex);
    8000435c:	0004b503          	ld	a0,0(s1)
    80004360:	ffffd097          	auipc	ra,0xffffd
    80004364:	7f0080e7          	jalr	2032(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    mutex = nullptr;
    80004368:	0004b023          	sd	zero,0(s1)
    changeIt = tmp;
    8000436c:	0124a423          	sw	s2,8(s1)
    sem_signal(mutex);
    80004370:	00000513          	li	a0,0
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	84c080e7          	jalr	-1972(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>
}
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	00813483          	ld	s1,8(sp)
    80004388:	00013903          	ld	s2,0(sp)
    8000438c:	02010113          	addi	sp,sp,32
    80004390:	00008067          	ret

0000000080004394 <_Z10increment2Pv>:
void increment2(void* arg) {
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	00813823          	sd	s0,16(sp)
    800043a0:	00913423          	sd	s1,8(sp)
    800043a4:	01213023          	sd	s2,0(sp)
    800043a8:	02010413          	addi	s0,sp,32
    sem_wait(mutex);
    800043ac:	00006497          	auipc	s1,0x6
    800043b0:	bd448493          	addi	s1,s1,-1068 # 80009f80 <mutex>
    800043b4:	0004b503          	ld	a0,0(s1)
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	7c0080e7          	jalr	1984(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>
    int tmp = changeIt;
    800043c0:	0084a903          	lw	s2,8(s1)
    ++tmp;
    800043c4:	0019091b          	addiw	s2,s2,1
    thread_dispatch();
    800043c8:	ffffd097          	auipc	ra,0xffffd
    800043cc:	730080e7          	jalr	1840(ra) # 80001af8 <_Z15thread_dispatchv>
    changeIt = tmp;
    800043d0:	0124a423          	sw	s2,8(s1)
    sem_signal(mutex);
    800043d4:	0004b503          	ld	a0,0(s1)
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	7e8080e7          	jalr	2024(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>
}
    800043e0:	01813083          	ld	ra,24(sp)
    800043e4:	01013403          	ld	s0,16(sp)
    800043e8:	00813483          	ld	s1,8(sp)
    800043ec:	00013903          	ld	s2,0(sp)
    800043f0:	02010113          	addi	sp,sp,32
    800043f4:	00008067          	ret

00000000800043f8 <_Z15test_semaphore1v>:
void test_semaphore1() {
    800043f8:	f4010113          	addi	sp,sp,-192
    800043fc:	0a113c23          	sd	ra,184(sp)
    80004400:	0a813823          	sd	s0,176(sp)
    80004404:	0a913423          	sd	s1,168(sp)
    80004408:	0b213023          	sd	s2,160(sp)
    8000440c:	0c010413          	addi	s0,sp,192
    KPCB* threads[20];
    sem_open(&mutex, 1);
    80004410:	00100593          	li	a1,1
    80004414:	00006517          	auipc	a0,0x6
    80004418:	b6c50513          	addi	a0,a0,-1172 # 80009f80 <mutex>
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	6fc080e7          	jalr	1788(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>

    for (int i = 0; i < 20; i++) {
    80004424:	00000493          	li	s1,0
    80004428:	05c0006f          	j	80004484 <_Z15test_semaphore1v+0x8c>
        thread_create(&threads[i], &increment1, nullptr);
    8000442c:	00349793          	slli	a5,s1,0x3
    80004430:	00000613          	li	a2,0
    80004434:	00000597          	auipc	a1,0x0
    80004438:	eec58593          	addi	a1,a1,-276 # 80004320 <_Z10increment1Pv>
    8000443c:	f4040513          	addi	a0,s0,-192
    80004440:	00f50533          	add	a0,a0,a5
    80004444:	ffffd097          	auipc	ra,0xffffd
    80004448:	5fc080e7          	jalr	1532(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
        printString("Thread ");
    8000444c:	00004517          	auipc	a0,0x4
    80004450:	d4c50513          	addi	a0,a0,-692 # 80008198 <CONSOLE_STATUS+0x188>
    80004454:	00000097          	auipc	ra,0x0
    80004458:	6c8080e7          	jalr	1736(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    8000445c:	00000613          	li	a2,0
    80004460:	00a00593          	li	a1,10
    80004464:	00048513          	mv	a0,s1
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	84c080e7          	jalr	-1972(ra) # 80004cb4 <_Z8printIntiii>
        printString(" created\n");
    80004470:	00004517          	auipc	a0,0x4
    80004474:	d3050513          	addi	a0,a0,-720 # 800081a0 <CONSOLE_STATUS+0x190>
    80004478:	00000097          	auipc	ra,0x0
    8000447c:	6a4080e7          	jalr	1700(ra) # 80004b1c <_Z11printStringPKc>
    for (int i = 0; i < 20; i++) {
    80004480:	0014849b          	addiw	s1,s1,1
    80004484:	01300793          	li	a5,19
    80004488:	fa97d2e3          	bge	a5,s1,8000442c <_Z15test_semaphore1v+0x34>
    }

    while (KPCB::counter) KPCB::yield();
    8000448c:	00006797          	auipc	a5,0x6
    80004490:	a4c7b783          	ld	a5,-1460(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004494:	0007a783          	lw	a5,0(a5)
    80004498:	00078863          	beqz	a5,800044a8 <_Z15test_semaphore1v+0xb0>
    8000449c:	fffff097          	auipc	ra,0xfffff
    800044a0:	b4c080e7          	jalr	-1204(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    800044a4:	fe9ff06f          	j	8000448c <_Z15test_semaphore1v+0x94>
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    800044a8:	f4040493          	addi	s1,s0,-192
    800044ac:	01c0006f          	j	800044c8 <_Z15test_semaphore1v+0xd0>
    ~KPCB() { delete[] stack; }
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	1c8080e7          	jalr	456(ra) # 80003678 <_ZdaPv>
        KMemoryAllocator::mem_free(addr);
    800044b8:	00090513          	mv	a0,s2
    800044bc:	00000097          	auipc	ra,0x0
    800044c0:	2f0080e7          	jalr	752(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    800044c4:	00848493          	addi	s1,s1,8
    800044c8:	fe040793          	addi	a5,s0,-32
    800044cc:	00f48c63          	beq	s1,a5,800044e4 <_Z15test_semaphore1v+0xec>
    800044d0:	0004b903          	ld	s2,0(s1)
    800044d4:	fe0908e3          	beqz	s2,800044c4 <_Z15test_semaphore1v+0xcc>
    ~KPCB() { delete[] stack; }
    800044d8:	01893503          	ld	a0,24(s2)
    800044dc:	fc051ae3          	bnez	a0,800044b0 <_Z15test_semaphore1v+0xb8>
    800044e0:	fd9ff06f          	j	800044b8 <_Z15test_semaphore1v+0xc0>
    printString("changeIt: ");
    800044e4:	00004517          	auipc	a0,0x4
    800044e8:	ccc50513          	addi	a0,a0,-820 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	630080e7          	jalr	1584(ra) # 80004b1c <_Z11printStringPKc>
    printInt(changeIt);
    800044f4:	00006497          	auipc	s1,0x6
    800044f8:	a8c48493          	addi	s1,s1,-1396 # 80009f80 <mutex>
    800044fc:	00000613          	li	a2,0
    80004500:	00a00593          	li	a1,10
    80004504:	0084a503          	lw	a0,8(s1)
    80004508:	00000097          	auipc	ra,0x0
    8000450c:	7ac080e7          	jalr	1964(ra) # 80004cb4 <_Z8printIntiii>
    sem_close(mutex);
    80004510:	0004b503          	ld	a0,0(s1)
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	63c080e7          	jalr	1596(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    mutex = nullptr;
    8000451c:	0004b023          	sd	zero,0(s1)
    printString("\nFinished\n");
    80004520:	00004517          	auipc	a0,0x4
    80004524:	ca050513          	addi	a0,a0,-864 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	5f4080e7          	jalr	1524(ra) # 80004b1c <_Z11printStringPKc>
}
    80004530:	0b813083          	ld	ra,184(sp)
    80004534:	0b013403          	ld	s0,176(sp)
    80004538:	0a813483          	ld	s1,168(sp)
    8000453c:	0a013903          	ld	s2,160(sp)
    80004540:	0c010113          	addi	sp,sp,192
    80004544:	00008067          	ret

0000000080004548 <_Z15test_semaphore2v>:
void test_semaphore2() {
    80004548:	f4010113          	addi	sp,sp,-192
    8000454c:	0a113c23          	sd	ra,184(sp)
    80004550:	0a813823          	sd	s0,176(sp)
    80004554:	0a913423          	sd	s1,168(sp)
    80004558:	0b213023          	sd	s2,160(sp)
    8000455c:	0c010413          	addi	s0,sp,192
    KPCB* threads[20];
    sem_open(&mutex, 1);
    80004560:	00100593          	li	a1,1
    80004564:	00006517          	auipc	a0,0x6
    80004568:	a1c50513          	addi	a0,a0,-1508 # 80009f80 <mutex>
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	5ac080e7          	jalr	1452(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>

    for (int i = 0; i < 20; i++) {
    80004574:	00000493          	li	s1,0
    80004578:	05c0006f          	j	800045d4 <_Z15test_semaphore2v+0x8c>
        thread_create(&threads[i], &increment2, nullptr);
    8000457c:	00349793          	slli	a5,s1,0x3
    80004580:	00000613          	li	a2,0
    80004584:	00000597          	auipc	a1,0x0
    80004588:	e1058593          	addi	a1,a1,-496 # 80004394 <_Z10increment2Pv>
    8000458c:	f4040513          	addi	a0,s0,-192
    80004590:	00f50533          	add	a0,a0,a5
    80004594:	ffffd097          	auipc	ra,0xffffd
    80004598:	4ac080e7          	jalr	1196(ra) # 80001a40 <_Z13thread_createPP4KPCBPFvPvES2_>
        printString("Thread ");
    8000459c:	00004517          	auipc	a0,0x4
    800045a0:	bfc50513          	addi	a0,a0,-1028 # 80008198 <CONSOLE_STATUS+0x188>
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	578080e7          	jalr	1400(ra) # 80004b1c <_Z11printStringPKc>
        printInt(i);
    800045ac:	00000613          	li	a2,0
    800045b0:	00a00593          	li	a1,10
    800045b4:	00048513          	mv	a0,s1
    800045b8:	00000097          	auipc	ra,0x0
    800045bc:	6fc080e7          	jalr	1788(ra) # 80004cb4 <_Z8printIntiii>
        printString(" created\n");
    800045c0:	00004517          	auipc	a0,0x4
    800045c4:	be050513          	addi	a0,a0,-1056 # 800081a0 <CONSOLE_STATUS+0x190>
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	554080e7          	jalr	1364(ra) # 80004b1c <_Z11printStringPKc>
    for (int i = 0; i < 20; i++) {
    800045d0:	0014849b          	addiw	s1,s1,1
    800045d4:	01300793          	li	a5,19
    800045d8:	fa97d2e3          	bge	a5,s1,8000457c <_Z15test_semaphore2v+0x34>
    }

    while (KPCB::counter) KPCB::yield();
    800045dc:	00006797          	auipc	a5,0x6
    800045e0:	8fc7b783          	ld	a5,-1796(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800045e4:	0007a783          	lw	a5,0(a5)
    800045e8:	00078863          	beqz	a5,800045f8 <_Z15test_semaphore2v+0xb0>
    800045ec:	fffff097          	auipc	ra,0xfffff
    800045f0:	9fc080e7          	jalr	-1540(ra) # 80002fe8 <_ZN4KPCB5yieldEv>
    800045f4:	fe9ff06f          	j	800045dc <_Z15test_semaphore2v+0x94>
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    800045f8:	f4040493          	addi	s1,s0,-192
    800045fc:	01c0006f          	j	80004618 <_Z15test_semaphore2v+0xd0>
    80004600:	fffff097          	auipc	ra,0xfffff
    80004604:	078080e7          	jalr	120(ra) # 80003678 <_ZdaPv>
        KMemoryAllocator::mem_free(addr);
    80004608:	00090513          	mv	a0,s2
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	1a0080e7          	jalr	416(ra) # 800047ac <_ZN16KMemoryAllocator8mem_freeEPv>
    80004614:	00848493          	addi	s1,s1,8
    80004618:	fe040793          	addi	a5,s0,-32
    8000461c:	00f48c63          	beq	s1,a5,80004634 <_Z15test_semaphore2v+0xec>
    80004620:	0004b903          	ld	s2,0(s1)
    80004624:	fe0908e3          	beqz	s2,80004614 <_Z15test_semaphore2v+0xcc>
    ~KPCB() { delete[] stack; }
    80004628:	01893503          	ld	a0,24(s2)
    8000462c:	fc051ae3          	bnez	a0,80004600 <_Z15test_semaphore2v+0xb8>
    80004630:	fd9ff06f          	j	80004608 <_Z15test_semaphore2v+0xc0>
    printString("changeIt: ");
    80004634:	00004517          	auipc	a0,0x4
    80004638:	b7c50513          	addi	a0,a0,-1156 # 800081b0 <CONSOLE_STATUS+0x1a0>
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	4e0080e7          	jalr	1248(ra) # 80004b1c <_Z11printStringPKc>
    printInt(changeIt);
    80004644:	00006497          	auipc	s1,0x6
    80004648:	93c48493          	addi	s1,s1,-1732 # 80009f80 <mutex>
    8000464c:	00000613          	li	a2,0
    80004650:	00a00593          	li	a1,10
    80004654:	0084a503          	lw	a0,8(s1)
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	65c080e7          	jalr	1628(ra) # 80004cb4 <_Z8printIntiii>
    sem_close(mutex);
    80004660:	0004b503          	ld	a0,0(s1)
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	4ec080e7          	jalr	1260(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    mutex = nullptr;
    8000466c:	0004b023          	sd	zero,0(s1)
    printString("\nFinished\n");
    80004670:	00004517          	auipc	a0,0x4
    80004674:	b5050513          	addi	a0,a0,-1200 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	4a4080e7          	jalr	1188(ra) # 80004b1c <_Z11printStringPKc>
}
    80004680:	0b813083          	ld	ra,184(sp)
    80004684:	0b013403          	ld	s0,176(sp)
    80004688:	0a813483          	ld	s1,168(sp)
    8000468c:	0a013903          	ld	s2,160(sp)
    80004690:	0c010113          	addi	sp,sp,192
    80004694:	00008067          	ret

0000000080004698 <_Z14test_semaphorev>:

void test_semaphore() {
    80004698:	ff010113          	addi	sp,sp,-16
    8000469c:	00113423          	sd	ra,8(sp)
    800046a0:	00813023          	sd	s0,0(sp)
    800046a4:	01010413          	addi	s0,sp,16
    //test_semaphore1();
    test_semaphore2();
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	ea0080e7          	jalr	-352(ra) # 80004548 <_Z15test_semaphore2v>
    800046b0:	00813083          	ld	ra,8(sp)
    800046b4:	00013403          	ld	s0,0(sp)
    800046b8:	01010113          	addi	sp,sp,16
    800046bc:	00008067          	ret

00000000800046c0 <_ZN16KMemoryAllocator9mem_allocEm>:

#include "../h/KMemoryAllocator.hpp"

BlockHeader* KMemoryAllocator::freeMemHead = nullptr;

void* KMemoryAllocator::mem_alloc(size_t sizeBlock) {
    800046c0:	ff010113          	addi	sp,sp,-16
    800046c4:	00813423          	sd	s0,8(sp)
    800046c8:	01010413          	addi	s0,sp,16
    size_t size = sizeBlock * MEM_BLOCK_SIZE;
    800046cc:	00651713          	slli	a4,a0,0x6
    BlockHeader *blk = freeMemHead, *prev = nullptr;
    800046d0:	00006517          	auipc	a0,0x6
    800046d4:	8c053503          	ld	a0,-1856(a0) # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    800046d8:	00000693          	li	a3,0
    while (blk != nullptr) {
    800046dc:	00050c63          	beqz	a0,800046f4 <_ZN16KMemoryAllocator9mem_allocEm+0x34>
        if (blk->size >= size) break;
    800046e0:	00853783          	ld	a5,8(a0)
    800046e4:	00e7f863          	bgeu	a5,a4,800046f4 <_ZN16KMemoryAllocator9mem_allocEm+0x34>
        prev = blk;
    800046e8:	00050693          	mv	a3,a0
        blk = blk->next;
    800046ec:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    800046f0:	fedff06f          	j	800046dc <_ZN16KMemoryAllocator9mem_allocEm+0x1c>
    }
    if (blk == nullptr) return nullptr;
    800046f4:	02050c63          	beqz	a0,8000472c <_ZN16KMemoryAllocator9mem_allocEm+0x6c>
    size_t remainingSize = blk->size - size;
    800046f8:	00853783          	ld	a5,8(a0)
    800046fc:	40e787b3          	sub	a5,a5,a4
    if (remainingSize >= MEM_BLOCK_SIZE) {
    80004700:	03f00613          	li	a2,63
    80004704:	04f67063          	bgeu	a2,a5,80004744 <_ZN16KMemoryAllocator9mem_allocEm+0x84>
        blk->size = size;
    80004708:	00e53423          	sd	a4,8(a0)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + size);
    8000470c:	00e50733          	add	a4,a0,a4
        if (prev) prev->next = newBlk;
    80004710:	02068463          	beqz	a3,80004738 <_ZN16KMemoryAllocator9mem_allocEm+0x78>
    80004714:	00e6b023          	sd	a4,0(a3)
        else freeMemHead = newBlk;
        newBlk->next = blk->next;
    80004718:	00053683          	ld	a3,0(a0)
    8000471c:	00d73023          	sd	a3,0(a4)
        newBlk->size = remainingSize;
    80004720:	00f73423          	sd	a5,8(a4)
    }
    else {
        if (prev) prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->next = nullptr;
    80004724:	00053023          	sd	zero,0(a0)
    return (char*)blk + sizeof(BlockHeader);
    80004728:	01050513          	addi	a0,a0,16
}
    8000472c:	00813403          	ld	s0,8(sp)
    80004730:	01010113          	addi	sp,sp,16
    80004734:	00008067          	ret
        else freeMemHead = newBlk;
    80004738:	00006697          	auipc	a3,0x6
    8000473c:	84e6bc23          	sd	a4,-1960(a3) # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    80004740:	fd9ff06f          	j	80004718 <_ZN16KMemoryAllocator9mem_allocEm+0x58>
        if (prev) prev->next = blk->next;
    80004744:	00068863          	beqz	a3,80004754 <_ZN16KMemoryAllocator9mem_allocEm+0x94>
    80004748:	00053783          	ld	a5,0(a0)
    8000474c:	00f6b023          	sd	a5,0(a3)
    80004750:	fd5ff06f          	j	80004724 <_ZN16KMemoryAllocator9mem_allocEm+0x64>
        else freeMemHead = blk->next;
    80004754:	00053783          	ld	a5,0(a0)
    80004758:	00006717          	auipc	a4,0x6
    8000475c:	82f73c23          	sd	a5,-1992(a4) # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    80004760:	fc5ff06f          	j	80004724 <_ZN16KMemoryAllocator9mem_allocEm+0x64>

0000000080004764 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>:
    KMemoryAllocator::tryToJoin(newSeg);
    KMemoryAllocator::tryToJoin(prev);
    return 0;
}

void KMemoryAllocator::tryToJoin(BlockHeader* curr) {
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00813423          	sd	s0,8(sp)
    8000476c:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80004770:	00050c63          	beqz	a0,80004788 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80004774:	00053783          	ld	a5,0(a0)
    80004778:	00078863          	beqz	a5,80004788 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    8000477c:	00853703          	ld	a4,8(a0)
    80004780:	00e506b3          	add	a3,a0,a4
    80004784:	00d78863          	beq	a5,a3,80004794 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80004788:	00813403          	ld	s0,8(sp)
    8000478c:	01010113          	addi	sp,sp,16
    80004790:	00008067          	ret
        curr->size += curr->next->size;
    80004794:	0087b683          	ld	a3,8(a5)
    80004798:	00d70733          	add	a4,a4,a3
    8000479c:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    800047a0:	0007b783          	ld	a5,0(a5)
    800047a4:	00f53023          	sd	a5,0(a0)
    800047a8:	fe1ff06f          	j	80004788 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader+0x24>

00000000800047ac <_ZN16KMemoryAllocator8mem_freeEPv>:
    if (addr == nullptr) return -1;
    800047ac:	0a050e63          	beqz	a0,80004868 <_ZN16KMemoryAllocator8mem_freeEPv+0xbc>
int KMemoryAllocator::mem_free(void* addr) {
    800047b0:	fe010113          	addi	sp,sp,-32
    800047b4:	00113c23          	sd	ra,24(sp)
    800047b8:	00813823          	sd	s0,16(sp)
    800047bc:	00913423          	sd	s1,8(sp)
    800047c0:	02010413          	addi	s0,sp,32
    800047c4:	00050713          	mv	a4,a0
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    800047c8:	00005697          	auipc	a3,0x5
    800047cc:	7c86b683          	ld	a3,1992(a3) # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    800047d0:	02068863          	beqz	a3,80004800 <_ZN16KMemoryAllocator8mem_freeEPv+0x54>
    800047d4:	02d56c63          	bltu	a0,a3,8000480c <_ZN16KMemoryAllocator8mem_freeEPv+0x60>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    800047d8:	00068793          	mv	a5,a3
    800047dc:	00000493          	li	s1,0
    800047e0:	00c0006f          	j	800047ec <_ZN16KMemoryAllocator8mem_freeEPv+0x40>
            prev = curr;
    800047e4:	00078493          	mv	s1,a5
            curr = curr->next;
    800047e8:	0007b783          	ld	a5,0(a5)
        while (curr != nullptr) {
    800047ec:	00078463          	beqz	a5,800047f4 <_ZN16KMemoryAllocator8mem_freeEPv+0x48>
            if (curr > addr) break;
    800047f0:	fef77ae3          	bgeu	a4,a5,800047e4 <_ZN16KMemoryAllocator8mem_freeEPv+0x38>
        if (curr == nullptr) return -1;
    800047f4:	02079063          	bnez	a5,80004814 <_ZN16KMemoryAllocator8mem_freeEPv+0x68>
    800047f8:	fff00513          	li	a0,-1
    800047fc:	0440006f          	j	80004840 <_ZN16KMemoryAllocator8mem_freeEPv+0x94>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80004800:	00068493          	mv	s1,a3
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    80004804:	00068793          	mv	a5,a3
    80004808:	00c0006f          	j	80004814 <_ZN16KMemoryAllocator8mem_freeEPv+0x68>
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    8000480c:	00000493          	li	s1,0
    if (!freeMemHead || addr < freeMemHead) curr = nullptr;
    80004810:	00000793          	li	a5,0
    BlockHeader* newSeg = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80004814:	ff070513          	addi	a0,a4,-16
    if (curr) newSeg->next = curr/*->next*/;
    80004818:	02078e63          	beqz	a5,80004854 <_ZN16KMemoryAllocator8mem_freeEPv+0xa8>
    8000481c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = newSeg;
    80004820:	02048e63          	beqz	s1,8000485c <_ZN16KMemoryAllocator8mem_freeEPv+0xb0>
    80004824:	00a4b023          	sd	a0,0(s1)
    KMemoryAllocator::tryToJoin(newSeg);
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	f3c080e7          	jalr	-196(ra) # 80004764 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>
    KMemoryAllocator::tryToJoin(prev);
    80004830:	00048513          	mv	a0,s1
    80004834:	00000097          	auipc	ra,0x0
    80004838:	f30080e7          	jalr	-208(ra) # 80004764 <_ZN16KMemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    8000483c:	00000513          	li	a0,0
}
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret
    else newSeg->next = freeMemHead;
    80004854:	fed73823          	sd	a3,-16(a4)
    80004858:	fc9ff06f          	j	80004820 <_ZN16KMemoryAllocator8mem_freeEPv+0x74>
    else freeMemHead = newSeg;
    8000485c:	00005797          	auipc	a5,0x5
    80004860:	72a7ba23          	sd	a0,1844(a5) # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    80004864:	fc5ff06f          	j	80004828 <_ZN16KMemoryAllocator8mem_freeEPv+0x7c>
    if (addr == nullptr) return -1;
    80004868:	fff00513          	li	a0,-1
}
    8000486c:	00008067          	ret

0000000080004870 <_ZN16KMemoryAllocator15initBlockHeaderEv>:

void KMemoryAllocator::initBlockHeader() {
    80004870:	ff010113          	addi	sp,sp,-16
    80004874:	00813423          	sd	s0,8(sp)
    80004878:	01010413          	addi	s0,sp,16
    freeMemHead = (BlockHeader*)HEAP_START_ADDR;
    8000487c:	00005697          	auipc	a3,0x5
    80004880:	61c6b683          	ld	a3,1564(a3) # 80009e98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004884:	0006b783          	ld	a5,0(a3)
    80004888:	00005717          	auipc	a4,0x5
    8000488c:	70870713          	addi	a4,a4,1800 # 80009f90 <_ZN16KMemoryAllocator11freeMemHeadE>
    80004890:	00f73023          	sd	a5,0(a4)
    freeMemHead->next = nullptr;
    80004894:	0007b023          	sd	zero,0(a5)
    freeMemHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80004898:	00005797          	auipc	a5,0x5
    8000489c:	6387b783          	ld	a5,1592(a5) # 80009ed0 <_GLOBAL_OFFSET_TABLE_+0x50>
    800048a0:	0007b783          	ld	a5,0(a5)
    800048a4:	0006b683          	ld	a3,0(a3)
    800048a8:	00073703          	ld	a4,0(a4)
    800048ac:	40d787b3          	sub	a5,a5,a3
    800048b0:	00f73423          	sd	a5,8(a4)
    800048b4:	00813403          	ld	s0,8(sp)
    800048b8:	01010113          	addi	sp,sp,16
    800048bc:	00008067          	ret

00000000800048c0 <_Z15printStringRadiPKc>:

#include "../h/print.hpp"
#include "../h/syscall_c.h"
#include "../h/KRiscv.hpp"

void printStringRadi(const char *str) {
    800048c0:	fd010113          	addi	sp,sp,-48
    800048c4:	02113423          	sd	ra,40(sp)
    800048c8:	02813023          	sd	s0,32(sp)
    800048cc:	00913c23          	sd	s1,24(sp)
    800048d0:	01213823          	sd	s2,16(sp)
    800048d4:	03010413          	addi	s0,sp,48
    800048d8:	00050493          	mv	s1,a0
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800048dc:	100027f3          	csrr	a5,sstatus
    800048e0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800048e4:	fd843903          	ld	s2,-40(s0)
    asm volatile ("csrc sstatus, %0" :: "r"(mask));
    800048e8:	00200793          	li	a5,2
    800048ec:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = KRiscv::r_sstatus();
    KRiscv::mc_sstatus(KRiscv::SSTATUS_SIE);
    while (*str != '\0') {
    800048f0:	0004c503          	lbu	a0,0(s1)
    800048f4:	00050a63          	beqz	a0,80004908 <_Z15printStringRadiPKc+0x48>
        putc(*str);
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	340080e7          	jalr	832(ra) # 80001c38 <_Z4putcc>
        str++;
    80004900:	00148493          	addi	s1,s1,1
    while (*str != '\0') {
    80004904:	fedff06f          	j	800048f0 <_Z15printStringRadiPKc+0x30>
    }
    KRiscv::ms_sstatus(sstatus & KRiscv::SSTATUS_SIE ? KRiscv::SSTATUS_SIE : 0);
    80004908:	0009091b          	sext.w	s2,s2
    8000490c:	00297913          	andi	s2,s2,2
    80004910:	0009091b          	sext.w	s2,s2
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
    80004914:	10092073          	csrs	sstatus,s2
}
    80004918:	02813083          	ld	ra,40(sp)
    8000491c:	02013403          	ld	s0,32(sp)
    80004920:	01813483          	ld	s1,24(sp)
    80004924:	01013903          	ld	s2,16(sp)
    80004928:	03010113          	addi	sp,sp,48
    8000492c:	00008067          	ret

0000000080004930 <_Z12printIntRadim>:

void printIntRadi(uint64 integer) {
    80004930:	fc010113          	addi	sp,sp,-64
    80004934:	02113c23          	sd	ra,56(sp)
    80004938:	02813823          	sd	s0,48(sp)
    8000493c:	02913423          	sd	s1,40(sp)
    80004940:	03213023          	sd	s2,32(sp)
    80004944:	04010413          	addi	s0,sp,64
    asm volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80004948:	100027f3          	csrr	a5,sstatus
    8000494c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80004950:	fc843903          	ld	s2,-56(s0)
    asm volatile ("csrc sstatus, %0" :: "r"(mask));
    80004954:	00200793          	li	a5,2
    80004958:	1007b073          	csrc	sstatus,a5
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0) neg = 1, x = -integer;
    else x = integer;
    8000495c:	0005051b          	sext.w	a0,a0

    i = 0;
    80004960:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % 10];
    80004964:	00a00613          	li	a2,10
    80004968:	02c5773b          	remuw	a4,a0,a2
    8000496c:	02071693          	slli	a3,a4,0x20
    80004970:	0206d693          	srli	a3,a3,0x20
    80004974:	00004717          	auipc	a4,0x4
    80004978:	85c70713          	addi	a4,a4,-1956 # 800081d0 <_ZZ12printIntRadimE6digits>
    8000497c:	00d70733          	add	a4,a4,a3
    80004980:	00074703          	lbu	a4,0(a4)
    80004984:	fe040693          	addi	a3,s0,-32
    80004988:	009687b3          	add	a5,a3,s1
    8000498c:	0014849b          	addiw	s1,s1,1
    80004990:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80004994:	0005071b          	sext.w	a4,a0
    80004998:	02c5553b          	divuw	a0,a0,a2
    8000499c:	00900793          	li	a5,9
    800049a0:	fce7e2e3          	bltu	a5,a4,80004964 <_Z12printIntRadim+0x34>
    if (neg) buf[i++] = '-';

    while (--i >= 0) putc(buf[i]);
    800049a4:	fff4849b          	addiw	s1,s1,-1
    800049a8:	0004ce63          	bltz	s1,800049c4 <_Z12printIntRadim+0x94>
    800049ac:	fe040793          	addi	a5,s0,-32
    800049b0:	009787b3          	add	a5,a5,s1
    800049b4:	ff07c503          	lbu	a0,-16(a5)
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	280080e7          	jalr	640(ra) # 80001c38 <_Z4putcc>
    800049c0:	fe5ff06f          	j	800049a4 <_Z12printIntRadim+0x74>
    KRiscv::ms_sstatus(sstatus & KRiscv::SSTATUS_SIE ? KRiscv::SSTATUS_SIE : 0);
    800049c4:	0009091b          	sext.w	s2,s2
    800049c8:	00297913          	andi	s2,s2,2
    800049cc:	0009091b          	sext.w	s2,s2
    asm volatile ("csrs sstatus, %0" :: "r"(mask));
    800049d0:	10092073          	csrs	sstatus,s2
    800049d4:	03813083          	ld	ra,56(sp)
    800049d8:	03013403          	ld	s0,48(sp)
    800049dc:	02813483          	ld	s1,40(sp)
    800049e0:	02013903          	ld	s2,32(sp)
    800049e4:	04010113          	addi	sp,sp,64
    800049e8:	00008067          	ret

00000000800049ec <_ZN10KSemaphore3putEP4KPCB>:
    KPCB* kpcb = KSemaphore::get();
    if (!kpcb) return;
    KScheduler::put(kpcb);
}

void KSemaphore::put(KPCB* kpcb) {
    800049ec:	ff010113          	addi	sp,sp,-16
    800049f0:	00813423          	sd	s0,8(sp)
    800049f4:	01010413          	addi	s0,sp,16
    void setWaiting(bool val) { waiting = val; }
    800049f8:	00100793          	li	a5,1
    800049fc:	02f58923          	sb	a5,50(a1)
    kpcb->setWaiting(true);
    if (!head) head = kpcb;
    80004a00:	00853783          	ld	a5,8(a0)
    80004a04:	00078e63          	beqz	a5,80004a20 <_ZN10KSemaphore3putEP4KPCB+0x34>
    else tail->nextSemaphore = kpcb;
    80004a08:	01053783          	ld	a5,16(a0)
    80004a0c:	04b7b423          	sd	a1,72(a5)
    tail = kpcb;
    80004a10:	00b53823          	sd	a1,16(a0)
}
    80004a14:	00813403          	ld	s0,8(sp)
    80004a18:	01010113          	addi	sp,sp,16
    80004a1c:	00008067          	ret
    if (!head) head = kpcb;
    80004a20:	00b53423          	sd	a1,8(a0)
    80004a24:	fedff06f          	j	80004a10 <_ZN10KSemaphore3putEP4KPCB+0x24>

0000000080004a28 <_ZN10KSemaphore5blockEv>:
void KSemaphore::block() {
    80004a28:	ff010113          	addi	sp,sp,-16
    80004a2c:	00113423          	sd	ra,8(sp)
    80004a30:	00813023          	sd	s0,0(sp)
    80004a34:	01010413          	addi	s0,sp,16
    put(KPCB::running);
    80004a38:	00005797          	auipc	a5,0x5
    80004a3c:	4807b783          	ld	a5,1152(a5) # 80009eb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004a40:	0007b583          	ld	a1,0(a5)
    80004a44:	00000097          	auipc	ra,0x0
    80004a48:	fa8080e7          	jalr	-88(ra) # 800049ec <_ZN10KSemaphore3putEP4KPCB>
    KPCB::dispatch();
    80004a4c:	ffffe097          	auipc	ra,0xffffe
    80004a50:	62c080e7          	jalr	1580(ra) # 80003078 <_ZN4KPCB8dispatchEv>
}
    80004a54:	00813083          	ld	ra,8(sp)
    80004a58:	00013403          	ld	s0,0(sp)
    80004a5c:	01010113          	addi	sp,sp,16
    80004a60:	00008067          	ret

0000000080004a64 <_ZN10KSemaphore3getEv>:

KPCB *KSemaphore::get() {
    80004a64:	ff010113          	addi	sp,sp,-16
    80004a68:	00813423          	sd	s0,8(sp)
    80004a6c:	01010413          	addi	s0,sp,16
    80004a70:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80004a74:	00853503          	ld	a0,8(a0)
    80004a78:	00050c63          	beqz	a0,80004a90 <_ZN10KSemaphore3getEv+0x2c>
    KPCB* old = head;
    head = head->nextSemaphore;
    80004a7c:	04853703          	ld	a4,72(a0)
    80004a80:	00e7b423          	sd	a4,8(a5)
    if (!head) tail = nullptr;
    80004a84:	00070c63          	beqz	a4,80004a9c <_ZN10KSemaphore3getEv+0x38>
    old->nextSemaphore = nullptr;
    80004a88:	04053423          	sd	zero,72(a0)
    80004a8c:	02050923          	sb	zero,50(a0)
    old->setWaiting(false);
    return old;
}
    80004a90:	00813403          	ld	s0,8(sp)
    80004a94:	01010113          	addi	sp,sp,16
    80004a98:	00008067          	ret
    if (!head) tail = nullptr;
    80004a9c:	0007b823          	sd	zero,16(a5)
    80004aa0:	fe9ff06f          	j	80004a88 <_ZN10KSemaphore3getEv+0x24>

0000000080004aa4 <_ZN10KSemaphore7deblockEv>:
void KSemaphore::deblock() {
    80004aa4:	ff010113          	addi	sp,sp,-16
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	00813023          	sd	s0,0(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    KPCB* kpcb = KSemaphore::get();
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	fb0080e7          	jalr	-80(ra) # 80004a64 <_ZN10KSemaphore3getEv>
    if (!kpcb) return;
    80004abc:	00050663          	beqz	a0,80004ac8 <_ZN10KSemaphore7deblockEv+0x24>
    KScheduler::put(kpcb);
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	4e4080e7          	jalr	1252(ra) # 80002fa4 <_ZN10KScheduler3putEP4KPCB>
}
    80004ac8:	00813083          	ld	ra,8(sp)
    80004acc:	00013403          	ld	s0,0(sp)
    80004ad0:	01010113          	addi	sp,sp,16
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN10KSemaphore15createSemaphoreEm>:

KSemaphore *KSemaphore::createSemaphore(uint64 init) {
    80004ad8:	fe010113          	addi	sp,sp,-32
    80004adc:	00113c23          	sd	ra,24(sp)
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00913423          	sd	s1,8(sp)
    80004ae8:	02010413          	addi	s0,sp,32
    80004aec:	00050493          	mv	s1,a0
        return KMemoryAllocator::mem_alloc(sizeBlock);
    80004af0:	00100513          	li	a0,1
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	bcc080e7          	jalr	-1076(ra) # 800046c0 <_ZN16KMemoryAllocator9mem_allocEm>
    void block();
    void deblock();
    void put(KPCB* kpcb);
    KPCB* get();
private:
    explicit KSemaphore(uint64 init) : val(init) {}
    80004afc:	00952023          	sw	s1,0(a0)
    80004b00:	00053423          	sd	zero,8(a0)
    80004b04:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    80004b08:	01813083          	ld	ra,24(sp)
    80004b0c:	01013403          	ld	s0,16(sp)
    80004b10:	00813483          	ld	s1,8(sp)
    80004b14:	02010113          	addi	sp,sp,32
    80004b18:	00008067          	ret

0000000080004b1c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004b1c:	fe010113          	addi	sp,sp,-32
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    LOCK();
    80004b34:	00100613          	li	a2,1
    80004b38:	00000593          	li	a1,0
    80004b3c:	00005517          	auipc	a0,0x5
    80004b40:	45c50513          	addi	a0,a0,1116 # 80009f98 <lockPrint>
    80004b44:	ffffc097          	auipc	ra,0xffffc
    80004b48:	6e8080e7          	jalr	1768(ra) # 8000122c <copy_and_swap>
    80004b4c:	fe0514e3          	bnez	a0,80004b34 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004b50:	0004c503          	lbu	a0,0(s1)
    80004b54:	00050a63          	beqz	a0,80004b68 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	0e0080e7          	jalr	224(ra) # 80001c38 <_Z4putcc>
        string++;
    80004b60:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004b64:	fedff06f          	j	80004b50 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004b68:	00000613          	li	a2,0
    80004b6c:	00100593          	li	a1,1
    80004b70:	00005517          	auipc	a0,0x5
    80004b74:	42850513          	addi	a0,a0,1064 # 80009f98 <lockPrint>
    80004b78:	ffffc097          	auipc	ra,0xffffc
    80004b7c:	6b4080e7          	jalr	1716(ra) # 8000122c <copy_and_swap>
    80004b80:	fe0514e3          	bnez	a0,80004b68 <_Z11printStringPKc+0x4c>
}
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	02010113          	addi	sp,sp,32
    80004b94:	00008067          	ret

0000000080004b98 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004b98:	fd010113          	addi	sp,sp,-48
    80004b9c:	02113423          	sd	ra,40(sp)
    80004ba0:	02813023          	sd	s0,32(sp)
    80004ba4:	00913c23          	sd	s1,24(sp)
    80004ba8:	01213823          	sd	s2,16(sp)
    80004bac:	01313423          	sd	s3,8(sp)
    80004bb0:	01413023          	sd	s4,0(sp)
    80004bb4:	03010413          	addi	s0,sp,48
    80004bb8:	00050993          	mv	s3,a0
    80004bbc:	00058a13          	mv	s4,a1
    LOCK();
    80004bc0:	00100613          	li	a2,1
    80004bc4:	00000593          	li	a1,0
    80004bc8:	00005517          	auipc	a0,0x5
    80004bcc:	3d050513          	addi	a0,a0,976 # 80009f98 <lockPrint>
    80004bd0:	ffffc097          	auipc	ra,0xffffc
    80004bd4:	65c080e7          	jalr	1628(ra) # 8000122c <copy_and_swap>
    80004bd8:	fe0514e3          	bnez	a0,80004bc0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004bdc:	00000913          	li	s2,0
    80004be0:	00090493          	mv	s1,s2
    80004be4:	0019091b          	addiw	s2,s2,1
    80004be8:	03495a63          	bge	s2,s4,80004c1c <_Z9getStringPci+0x84>
        cc = getc();
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	024080e7          	jalr	36(ra) # 80001c10 <_Z4getcv>
        if(cc < 1)
    80004bf4:	02050463          	beqz	a0,80004c1c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004bf8:	009984b3          	add	s1,s3,s1
    80004bfc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004c00:	00a00793          	li	a5,10
    80004c04:	00f50a63          	beq	a0,a5,80004c18 <_Z9getStringPci+0x80>
    80004c08:	00d00793          	li	a5,13
    80004c0c:	fcf51ae3          	bne	a0,a5,80004be0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004c10:	00090493          	mv	s1,s2
    80004c14:	0080006f          	j	80004c1c <_Z9getStringPci+0x84>
    80004c18:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004c1c:	009984b3          	add	s1,s3,s1
    80004c20:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004c24:	00000613          	li	a2,0
    80004c28:	00100593          	li	a1,1
    80004c2c:	00005517          	auipc	a0,0x5
    80004c30:	36c50513          	addi	a0,a0,876 # 80009f98 <lockPrint>
    80004c34:	ffffc097          	auipc	ra,0xffffc
    80004c38:	5f8080e7          	jalr	1528(ra) # 8000122c <copy_and_swap>
    80004c3c:	fe0514e3          	bnez	a0,80004c24 <_Z9getStringPci+0x8c>
    return buf;
}
    80004c40:	00098513          	mv	a0,s3
    80004c44:	02813083          	ld	ra,40(sp)
    80004c48:	02013403          	ld	s0,32(sp)
    80004c4c:	01813483          	ld	s1,24(sp)
    80004c50:	01013903          	ld	s2,16(sp)
    80004c54:	00813983          	ld	s3,8(sp)
    80004c58:	00013a03          	ld	s4,0(sp)
    80004c5c:	03010113          	addi	sp,sp,48
    80004c60:	00008067          	ret

0000000080004c64 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004c64:	ff010113          	addi	sp,sp,-16
    80004c68:	00813423          	sd	s0,8(sp)
    80004c6c:	01010413          	addi	s0,sp,16
    80004c70:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004c74:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004c78:	0006c603          	lbu	a2,0(a3)
    80004c7c:	fd06071b          	addiw	a4,a2,-48
    80004c80:	0ff77713          	andi	a4,a4,255
    80004c84:	00900793          	li	a5,9
    80004c88:	02e7e063          	bltu	a5,a4,80004ca8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004c8c:	0025179b          	slliw	a5,a0,0x2
    80004c90:	00a787bb          	addw	a5,a5,a0
    80004c94:	0017979b          	slliw	a5,a5,0x1
    80004c98:	00168693          	addi	a3,a3,1
    80004c9c:	00c787bb          	addw	a5,a5,a2
    80004ca0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004ca4:	fd5ff06f          	j	80004c78 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004ca8:	00813403          	ld	s0,8(sp)
    80004cac:	01010113          	addi	sp,sp,16
    80004cb0:	00008067          	ret

0000000080004cb4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004cb4:	fc010113          	addi	sp,sp,-64
    80004cb8:	02113c23          	sd	ra,56(sp)
    80004cbc:	02813823          	sd	s0,48(sp)
    80004cc0:	02913423          	sd	s1,40(sp)
    80004cc4:	03213023          	sd	s2,32(sp)
    80004cc8:	01313c23          	sd	s3,24(sp)
    80004ccc:	04010413          	addi	s0,sp,64
    80004cd0:	00050493          	mv	s1,a0
    80004cd4:	00058913          	mv	s2,a1
    80004cd8:	00060993          	mv	s3,a2
    LOCK();
    80004cdc:	00100613          	li	a2,1
    80004ce0:	00000593          	li	a1,0
    80004ce4:	00005517          	auipc	a0,0x5
    80004ce8:	2b450513          	addi	a0,a0,692 # 80009f98 <lockPrint>
    80004cec:	ffffc097          	auipc	ra,0xffffc
    80004cf0:	540080e7          	jalr	1344(ra) # 8000122c <copy_and_swap>
    80004cf4:	fe0514e3          	bnez	a0,80004cdc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004cf8:	00098463          	beqz	s3,80004d00 <_Z8printIntiii+0x4c>
    80004cfc:	0804c463          	bltz	s1,80004d84 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004d00:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004d04:	00000593          	li	a1,0
    }

    i = 0;
    80004d08:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004d0c:	0009079b          	sext.w	a5,s2
    80004d10:	0325773b          	remuw	a4,a0,s2
    80004d14:	00048613          	mv	a2,s1
    80004d18:	0014849b          	addiw	s1,s1,1
    80004d1c:	02071693          	slli	a3,a4,0x20
    80004d20:	0206d693          	srli	a3,a3,0x20
    80004d24:	00005717          	auipc	a4,0x5
    80004d28:	0cc70713          	addi	a4,a4,204 # 80009df0 <digits>
    80004d2c:	00d70733          	add	a4,a4,a3
    80004d30:	00074683          	lbu	a3,0(a4)
    80004d34:	fd040713          	addi	a4,s0,-48
    80004d38:	00c70733          	add	a4,a4,a2
    80004d3c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004d40:	0005071b          	sext.w	a4,a0
    80004d44:	0325553b          	divuw	a0,a0,s2
    80004d48:	fcf772e3          	bgeu	a4,a5,80004d0c <_Z8printIntiii+0x58>
    if(neg)
    80004d4c:	00058c63          	beqz	a1,80004d64 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004d50:	fd040793          	addi	a5,s0,-48
    80004d54:	009784b3          	add	s1,a5,s1
    80004d58:	02d00793          	li	a5,45
    80004d5c:	fef48823          	sb	a5,-16(s1)
    80004d60:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004d64:	fff4849b          	addiw	s1,s1,-1
    80004d68:	0204c463          	bltz	s1,80004d90 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004d6c:	fd040793          	addi	a5,s0,-48
    80004d70:	009787b3          	add	a5,a5,s1
    80004d74:	ff07c503          	lbu	a0,-16(a5)
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	ec0080e7          	jalr	-320(ra) # 80001c38 <_Z4putcc>
    80004d80:	fe5ff06f          	j	80004d64 <_Z8printIntiii+0xb0>
        x = -xx;
    80004d84:	4090053b          	negw	a0,s1
        neg = 1;
    80004d88:	00100593          	li	a1,1
        x = -xx;
    80004d8c:	f7dff06f          	j	80004d08 <_Z8printIntiii+0x54>

    UNLOCK();
    80004d90:	00000613          	li	a2,0
    80004d94:	00100593          	li	a1,1
    80004d98:	00005517          	auipc	a0,0x5
    80004d9c:	20050513          	addi	a0,a0,512 # 80009f98 <lockPrint>
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	48c080e7          	jalr	1164(ra) # 8000122c <copy_and_swap>
    80004da8:	fe0514e3          	bnez	a0,80004d90 <_Z8printIntiii+0xdc>
}
    80004dac:	03813083          	ld	ra,56(sp)
    80004db0:	03013403          	ld	s0,48(sp)
    80004db4:	02813483          	ld	s1,40(sp)
    80004db8:	02013903          	ld	s2,32(sp)
    80004dbc:	01813983          	ld	s3,24(sp)
    80004dc0:	04010113          	addi	sp,sp,64
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004dc8:	fd010113          	addi	sp,sp,-48
    80004dcc:	02113423          	sd	ra,40(sp)
    80004dd0:	02813023          	sd	s0,32(sp)
    80004dd4:	00913c23          	sd	s1,24(sp)
    80004dd8:	01213823          	sd	s2,16(sp)
    80004ddc:	01313423          	sd	s3,8(sp)
    80004de0:	03010413          	addi	s0,sp,48
    80004de4:	00050493          	mv	s1,a0
    80004de8:	00058913          	mv	s2,a1
    80004dec:	0015879b          	addiw	a5,a1,1
    80004df0:	0007851b          	sext.w	a0,a5
    80004df4:	00f4a023          	sw	a5,0(s1)
    80004df8:	0004a823          	sw	zero,16(s1)
    80004dfc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004e00:	00251513          	slli	a0,a0,0x2
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	b1c080e7          	jalr	-1252(ra) # 80001920 <_Z9mem_allocm>
    80004e0c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004e10:	01000513          	li	a0,16
    80004e14:	ffffe097          	auipc	ra,0xffffe
    80004e18:	76c080e7          	jalr	1900(ra) # 80003580 <_Znwm>
    80004e1c:	00050993          	mv	s3,a0
    80004e20:	00000593          	li	a1,0
    80004e24:	fffff097          	auipc	ra,0xfffff
    80004e28:	990080e7          	jalr	-1648(ra) # 800037b4 <_ZN9SemaphoreC1Ej>
    80004e2c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004e30:	01000513          	li	a0,16
    80004e34:	ffffe097          	auipc	ra,0xffffe
    80004e38:	74c080e7          	jalr	1868(ra) # 80003580 <_Znwm>
    80004e3c:	00050993          	mv	s3,a0
    80004e40:	00090593          	mv	a1,s2
    80004e44:	fffff097          	auipc	ra,0xfffff
    80004e48:	970080e7          	jalr	-1680(ra) # 800037b4 <_ZN9SemaphoreC1Ej>
    80004e4c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004e50:	01000513          	li	a0,16
    80004e54:	ffffe097          	auipc	ra,0xffffe
    80004e58:	72c080e7          	jalr	1836(ra) # 80003580 <_Znwm>
    80004e5c:	00050913          	mv	s2,a0
    80004e60:	00100593          	li	a1,1
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	950080e7          	jalr	-1712(ra) # 800037b4 <_ZN9SemaphoreC1Ej>
    80004e6c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004e70:	01000513          	li	a0,16
    80004e74:	ffffe097          	auipc	ra,0xffffe
    80004e78:	70c080e7          	jalr	1804(ra) # 80003580 <_Znwm>
    80004e7c:	00050913          	mv	s2,a0
    80004e80:	00100593          	li	a1,1
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	930080e7          	jalr	-1744(ra) # 800037b4 <_ZN9SemaphoreC1Ej>
    80004e8c:	0324b823          	sd	s2,48(s1)
}
    80004e90:	02813083          	ld	ra,40(sp)
    80004e94:	02013403          	ld	s0,32(sp)
    80004e98:	01813483          	ld	s1,24(sp)
    80004e9c:	01013903          	ld	s2,16(sp)
    80004ea0:	00813983          	ld	s3,8(sp)
    80004ea4:	03010113          	addi	sp,sp,48
    80004ea8:	00008067          	ret
    80004eac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004eb0:	00098513          	mv	a0,s3
    80004eb4:	ffffe097          	auipc	ra,0xffffe
    80004eb8:	6f4080e7          	jalr	1780(ra) # 800035a8 <_ZdlPv>
    80004ebc:	00048513          	mv	a0,s1
    80004ec0:	00006097          	auipc	ra,0x6
    80004ec4:	1b8080e7          	jalr	440(ra) # 8000b078 <_Unwind_Resume>
    80004ec8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004ecc:	00098513          	mv	a0,s3
    80004ed0:	ffffe097          	auipc	ra,0xffffe
    80004ed4:	6d8080e7          	jalr	1752(ra) # 800035a8 <_ZdlPv>
    80004ed8:	00048513          	mv	a0,s1
    80004edc:	00006097          	auipc	ra,0x6
    80004ee0:	19c080e7          	jalr	412(ra) # 8000b078 <_Unwind_Resume>
    80004ee4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004ee8:	00090513          	mv	a0,s2
    80004eec:	ffffe097          	auipc	ra,0xffffe
    80004ef0:	6bc080e7          	jalr	1724(ra) # 800035a8 <_ZdlPv>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00006097          	auipc	ra,0x6
    80004efc:	180080e7          	jalr	384(ra) # 8000b078 <_Unwind_Resume>
    80004f00:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004f04:	00090513          	mv	a0,s2
    80004f08:	ffffe097          	auipc	ra,0xffffe
    80004f0c:	6a0080e7          	jalr	1696(ra) # 800035a8 <_ZdlPv>
    80004f10:	00048513          	mv	a0,s1
    80004f14:	00006097          	auipc	ra,0x6
    80004f18:	164080e7          	jalr	356(ra) # 8000b078 <_Unwind_Resume>

0000000080004f1c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004f1c:	fe010113          	addi	sp,sp,-32
    80004f20:	00113c23          	sd	ra,24(sp)
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	01213023          	sd	s2,0(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	00050493          	mv	s1,a0
    80004f38:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004f3c:	01853503          	ld	a0,24(a0)
    80004f40:	fffff097          	auipc	ra,0xfffff
    80004f44:	8ac080e7          	jalr	-1876(ra) # 800037ec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004f48:	0304b503          	ld	a0,48(s1)
    80004f4c:	fffff097          	auipc	ra,0xfffff
    80004f50:	8a0080e7          	jalr	-1888(ra) # 800037ec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004f54:	0084b783          	ld	a5,8(s1)
    80004f58:	0144a703          	lw	a4,20(s1)
    80004f5c:	00271713          	slli	a4,a4,0x2
    80004f60:	00e787b3          	add	a5,a5,a4
    80004f64:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f68:	0144a783          	lw	a5,20(s1)
    80004f6c:	0017879b          	addiw	a5,a5,1
    80004f70:	0004a703          	lw	a4,0(s1)
    80004f74:	02e7e7bb          	remw	a5,a5,a4
    80004f78:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004f7c:	0304b503          	ld	a0,48(s1)
    80004f80:	fffff097          	auipc	ra,0xfffff
    80004f84:	898080e7          	jalr	-1896(ra) # 80003818 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004f88:	0204b503          	ld	a0,32(s1)
    80004f8c:	fffff097          	auipc	ra,0xfffff
    80004f90:	88c080e7          	jalr	-1908(ra) # 80003818 <_ZN9Semaphore6signalEv>

}
    80004f94:	01813083          	ld	ra,24(sp)
    80004f98:	01013403          	ld	s0,16(sp)
    80004f9c:	00813483          	ld	s1,8(sp)
    80004fa0:	00013903          	ld	s2,0(sp)
    80004fa4:	02010113          	addi	sp,sp,32
    80004fa8:	00008067          	ret

0000000080004fac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004fac:	fe010113          	addi	sp,sp,-32
    80004fb0:	00113c23          	sd	ra,24(sp)
    80004fb4:	00813823          	sd	s0,16(sp)
    80004fb8:	00913423          	sd	s1,8(sp)
    80004fbc:	01213023          	sd	s2,0(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004fc8:	02053503          	ld	a0,32(a0)
    80004fcc:	fffff097          	auipc	ra,0xfffff
    80004fd0:	820080e7          	jalr	-2016(ra) # 800037ec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004fd4:	0284b503          	ld	a0,40(s1)
    80004fd8:	fffff097          	auipc	ra,0xfffff
    80004fdc:	814080e7          	jalr	-2028(ra) # 800037ec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004fe0:	0084b703          	ld	a4,8(s1)
    80004fe4:	0104a783          	lw	a5,16(s1)
    80004fe8:	00279693          	slli	a3,a5,0x2
    80004fec:	00d70733          	add	a4,a4,a3
    80004ff0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004ff4:	0017879b          	addiw	a5,a5,1
    80004ff8:	0004a703          	lw	a4,0(s1)
    80004ffc:	02e7e7bb          	remw	a5,a5,a4
    80005000:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005004:	0284b503          	ld	a0,40(s1)
    80005008:	fffff097          	auipc	ra,0xfffff
    8000500c:	810080e7          	jalr	-2032(ra) # 80003818 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005010:	0184b503          	ld	a0,24(s1)
    80005014:	fffff097          	auipc	ra,0xfffff
    80005018:	804080e7          	jalr	-2044(ra) # 80003818 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000501c:	00090513          	mv	a0,s2
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	00013903          	ld	s2,0(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005038:	fe010113          	addi	sp,sp,-32
    8000503c:	00113c23          	sd	ra,24(sp)
    80005040:	00813823          	sd	s0,16(sp)
    80005044:	00913423          	sd	s1,8(sp)
    80005048:	01213023          	sd	s2,0(sp)
    8000504c:	02010413          	addi	s0,sp,32
    80005050:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005054:	02853503          	ld	a0,40(a0)
    80005058:	ffffe097          	auipc	ra,0xffffe
    8000505c:	794080e7          	jalr	1940(ra) # 800037ec <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005060:	0304b503          	ld	a0,48(s1)
    80005064:	ffffe097          	auipc	ra,0xffffe
    80005068:	788080e7          	jalr	1928(ra) # 800037ec <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000506c:	0144a783          	lw	a5,20(s1)
    80005070:	0104a903          	lw	s2,16(s1)
    80005074:	0327ce63          	blt	a5,s2,800050b0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005078:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000507c:	0304b503          	ld	a0,48(s1)
    80005080:	ffffe097          	auipc	ra,0xffffe
    80005084:	798080e7          	jalr	1944(ra) # 80003818 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005088:	0284b503          	ld	a0,40(s1)
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	78c080e7          	jalr	1932(ra) # 80003818 <_ZN9Semaphore6signalEv>

    return ret;
    80005094:	00090513          	mv	a0,s2
    80005098:	01813083          	ld	ra,24(sp)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	00813483          	ld	s1,8(sp)
    800050a4:	00013903          	ld	s2,0(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret
        ret = cap - head + tail;
    800050b0:	0004a703          	lw	a4,0(s1)
    800050b4:	4127093b          	subw	s2,a4,s2
    800050b8:	00f9093b          	addw	s2,s2,a5
    800050bc:	fc1ff06f          	j	8000507c <_ZN9BufferCPP6getCntEv+0x44>

00000000800050c0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800050d8:	00a00513          	li	a0,10
    800050dc:	ffffe097          	auipc	ra,0xffffe
    800050e0:	790080e7          	jalr	1936(ra) # 8000386c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800050e4:	00003517          	auipc	a0,0x3
    800050e8:	0fc50513          	addi	a0,a0,252 # 800081e0 <_ZZ12printIntRadimE6digits+0x10>
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	a30080e7          	jalr	-1488(ra) # 80004b1c <_Z11printStringPKc>
    while (getCnt()) {
    800050f4:	00048513          	mv	a0,s1
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	f40080e7          	jalr	-192(ra) # 80005038 <_ZN9BufferCPP6getCntEv>
    80005100:	02050c63          	beqz	a0,80005138 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005104:	0084b783          	ld	a5,8(s1)
    80005108:	0104a703          	lw	a4,16(s1)
    8000510c:	00271713          	slli	a4,a4,0x2
    80005110:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005114:	0007c503          	lbu	a0,0(a5)
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	754080e7          	jalr	1876(ra) # 8000386c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005120:	0104a783          	lw	a5,16(s1)
    80005124:	0017879b          	addiw	a5,a5,1
    80005128:	0004a703          	lw	a4,0(s1)
    8000512c:	02e7e7bb          	remw	a5,a5,a4
    80005130:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005134:	fc1ff06f          	j	800050f4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005138:	02100513          	li	a0,33
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	730080e7          	jalr	1840(ra) # 8000386c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005144:	00a00513          	li	a0,10
    80005148:	ffffe097          	auipc	ra,0xffffe
    8000514c:	724080e7          	jalr	1828(ra) # 8000386c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005150:	0084b503          	ld	a0,8(s1)
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	80c080e7          	jalr	-2036(ra) # 80001960 <_Z8mem_freePv>
    delete itemAvailable;
    8000515c:	0204b503          	ld	a0,32(s1)
    80005160:	00050863          	beqz	a0,80005170 <_ZN9BufferCPPD1Ev+0xb0>
    80005164:	00053783          	ld	a5,0(a0)
    80005168:	0087b783          	ld	a5,8(a5)
    8000516c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005170:	0184b503          	ld	a0,24(s1)
    80005174:	00050863          	beqz	a0,80005184 <_ZN9BufferCPPD1Ev+0xc4>
    80005178:	00053783          	ld	a5,0(a0)
    8000517c:	0087b783          	ld	a5,8(a5)
    80005180:	000780e7          	jalr	a5
    delete mutexTail;
    80005184:	0304b503          	ld	a0,48(s1)
    80005188:	00050863          	beqz	a0,80005198 <_ZN9BufferCPPD1Ev+0xd8>
    8000518c:	00053783          	ld	a5,0(a0)
    80005190:	0087b783          	ld	a5,8(a5)
    80005194:	000780e7          	jalr	a5
    delete mutexHead;
    80005198:	0284b503          	ld	a0,40(s1)
    8000519c:	00050863          	beqz	a0,800051ac <_ZN9BufferCPPD1Ev+0xec>
    800051a0:	00053783          	ld	a5,0(a0)
    800051a4:	0087b783          	ld	a5,8(a5)
    800051a8:	000780e7          	jalr	a5
}
    800051ac:	01813083          	ld	ra,24(sp)
    800051b0:	01013403          	ld	s0,16(sp)
    800051b4:	00813483          	ld	s1,8(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret

00000000800051c0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    800051c0:	f8010113          	addi	sp,sp,-128
    800051c4:	06113c23          	sd	ra,120(sp)
    800051c8:	06813823          	sd	s0,112(sp)
    800051cc:	06913423          	sd	s1,104(sp)
    800051d0:	07213023          	sd	s2,96(sp)
    800051d4:	05313c23          	sd	s3,88(sp)
    800051d8:	05413823          	sd	s4,80(sp)
    800051dc:	05513423          	sd	s5,72(sp)
    800051e0:	05613023          	sd	s6,64(sp)
    800051e4:	03713c23          	sd	s7,56(sp)
    800051e8:	03813823          	sd	s8,48(sp)
    800051ec:	03913423          	sd	s9,40(sp)
    800051f0:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    800051f4:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    800051f8:	00003517          	auipc	a0,0x3
    800051fc:	00050513          	mv	a0,a0
    80005200:	00000097          	auipc	ra,0x0
    80005204:	91c080e7          	jalr	-1764(ra) # 80004b1c <_Z11printStringPKc>
        getString(input, 30);
    80005208:	01e00593          	li	a1,30
    8000520c:	f8040493          	addi	s1,s0,-128
    80005210:	00048513          	mv	a0,s1
    80005214:	00000097          	auipc	ra,0x0
    80005218:	984080e7          	jalr	-1660(ra) # 80004b98 <_Z9getStringPci>
        threadNum = stringToInt(input);
    8000521c:	00048513          	mv	a0,s1
    80005220:	00000097          	auipc	ra,0x0
    80005224:	a44080e7          	jalr	-1468(ra) # 80004c64 <_Z11stringToIntPKc>
    80005228:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    8000522c:	00003517          	auipc	a0,0x3
    80005230:	fec50513          	addi	a0,a0,-20 # 80008218 <_ZZ12printIntRadimE6digits+0x48>
    80005234:	00000097          	auipc	ra,0x0
    80005238:	8e8080e7          	jalr	-1816(ra) # 80004b1c <_Z11printStringPKc>
        getString(input, 30);
    8000523c:	01e00593          	li	a1,30
    80005240:	00048513          	mv	a0,s1
    80005244:	00000097          	auipc	ra,0x0
    80005248:	954080e7          	jalr	-1708(ra) # 80004b98 <_Z9getStringPci>
        n = stringToInt(input);
    8000524c:	00048513          	mv	a0,s1
    80005250:	00000097          	auipc	ra,0x0
    80005254:	a14080e7          	jalr	-1516(ra) # 80004c64 <_Z11stringToIntPKc>
    80005258:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    8000525c:	00003517          	auipc	a0,0x3
    80005260:	fdc50513          	addi	a0,a0,-36 # 80008238 <_ZZ12printIntRadimE6digits+0x68>
    80005264:	00000097          	auipc	ra,0x0
    80005268:	8b8080e7          	jalr	-1864(ra) # 80004b1c <_Z11printStringPKc>
    8000526c:	00000613          	li	a2,0
    80005270:	00a00593          	li	a1,10
    80005274:	00098513          	mv	a0,s3
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	a3c080e7          	jalr	-1476(ra) # 80004cb4 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80005280:	00003517          	auipc	a0,0x3
    80005284:	fd050513          	addi	a0,a0,-48 # 80008250 <_ZZ12printIntRadimE6digits+0x80>
    80005288:	00000097          	auipc	ra,0x0
    8000528c:	894080e7          	jalr	-1900(ra) # 80004b1c <_Z11printStringPKc>
    80005290:	00000613          	li	a2,0
    80005294:	00a00593          	li	a1,10
    80005298:	00048513          	mv	a0,s1
    8000529c:	00000097          	auipc	ra,0x0
    800052a0:	a18080e7          	jalr	-1512(ra) # 80004cb4 <_Z8printIntiii>
        printString(".\n");
    800052a4:	00003517          	auipc	a0,0x3
    800052a8:	fc450513          	addi	a0,a0,-60 # 80008268 <_ZZ12printIntRadimE6digits+0x98>
    800052ac:	00000097          	auipc	ra,0x0
    800052b0:	870080e7          	jalr	-1936(ra) # 80004b1c <_Z11printStringPKc>
        if(threadNum > n) {
    800052b4:	0334c463          	blt	s1,s3,800052dc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    800052b8:	03305c63          	blez	s3,800052f0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    800052bc:	03800513          	li	a0,56
    800052c0:	ffffe097          	auipc	ra,0xffffe
    800052c4:	2c0080e7          	jalr	704(ra) # 80003580 <_Znwm>
    800052c8:	00050a93          	mv	s5,a0
    800052cc:	00048593          	mv	a1,s1
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	af8080e7          	jalr	-1288(ra) # 80004dc8 <_ZN9BufferCPPC1Ei>
    800052d8:	0300006f          	j	80005308 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800052dc:	00003517          	auipc	a0,0x3
    800052e0:	f9450513          	addi	a0,a0,-108 # 80008270 <_ZZ12printIntRadimE6digits+0xa0>
    800052e4:	00000097          	auipc	ra,0x0
    800052e8:	838080e7          	jalr	-1992(ra) # 80004b1c <_Z11printStringPKc>
            return;
    800052ec:	0140006f          	j	80005300 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052f0:	00003517          	auipc	a0,0x3
    800052f4:	fc050513          	addi	a0,a0,-64 # 800082b0 <_ZZ12printIntRadimE6digits+0xe0>
    800052f8:	00000097          	auipc	ra,0x0
    800052fc:	824080e7          	jalr	-2012(ra) # 80004b1c <_Z11printStringPKc>
            return;
    80005300:	000c0113          	mv	sp,s8
    80005304:	21c0006f          	j	80005520 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80005308:	01000513          	li	a0,16
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	274080e7          	jalr	628(ra) # 80003580 <_Znwm>
    80005314:	00050493          	mv	s1,a0
    80005318:	00000593          	li	a1,0
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	498080e7          	jalr	1176(ra) # 800037b4 <_ZN9SemaphoreC1Ej>
    80005324:	00005717          	auipc	a4,0x5
    80005328:	c7c70713          	addi	a4,a4,-900 # 80009fa0 <_ZN19ConsumerProducerCPP9threadEndE>
    8000532c:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80005330:	00399793          	slli	a5,s3,0x3
    80005334:	00f78793          	addi	a5,a5,15
    80005338:	ff07f793          	andi	a5,a5,-16
    8000533c:	40f10133          	sub	sp,sp,a5
    80005340:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80005344:	0019869b          	addiw	a3,s3,1
    80005348:	00169793          	slli	a5,a3,0x1
    8000534c:	00d787b3          	add	a5,a5,a3
    80005350:	00379793          	slli	a5,a5,0x3
    80005354:	00f78793          	addi	a5,a5,15
    80005358:	ff07f793          	andi	a5,a5,-16
    8000535c:	40f10133          	sub	sp,sp,a5
    80005360:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80005364:	00199493          	slli	s1,s3,0x1
    80005368:	013484b3          	add	s1,s1,s3
    8000536c:	00349493          	slli	s1,s1,0x3
    80005370:	009b04b3          	add	s1,s6,s1
    80005374:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80005378:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    8000537c:	00873783          	ld	a5,8(a4)
    80005380:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80005384:	01800513          	li	a0,24
    80005388:	ffffe097          	auipc	ra,0xffffe
    8000538c:	1f8080e7          	jalr	504(ra) # 80003580 <_Znwm>
    80005390:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80005394:	ffffe097          	auipc	ra,0xffffe
    80005398:	3dc080e7          	jalr	988(ra) # 80003770 <_ZN6ThreadC1Ev>
    8000539c:	00005797          	auipc	a5,0x5
    800053a0:	acc78793          	addi	a5,a5,-1332 # 80009e68 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800053a4:	00fbb023          	sd	a5,0(s7)
    800053a8:	009bb823          	sd	s1,16(s7)
        consumer->start();
    800053ac:	000b8513          	mv	a0,s7
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	328080e7          	jalr	808(ra) # 800036d8 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    800053b8:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    800053bc:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    800053c0:	00005797          	auipc	a5,0x5
    800053c4:	be87b783          	ld	a5,-1048(a5) # 80009fa8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800053c8:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800053cc:	01800513          	li	a0,24
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	1b0080e7          	jalr	432(ra) # 80003580 <_Znwm>
    800053d8:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800053dc:	ffffe097          	auipc	ra,0xffffe
    800053e0:	394080e7          	jalr	916(ra) # 80003770 <_ZN6ThreadC1Ev>
    800053e4:	00005797          	auipc	a5,0x5
    800053e8:	a3478793          	addi	a5,a5,-1484 # 80009e18 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800053ec:	00f4b023          	sd	a5,0(s1)
    800053f0:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800053f4:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    800053f8:	00048513          	mv	a0,s1
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	2dc080e7          	jalr	732(ra) # 800036d8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80005404:	00100913          	li	s2,1
    80005408:	0300006f          	j	80005438 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    8000540c:	00005797          	auipc	a5,0x5
    80005410:	a3478793          	addi	a5,a5,-1484 # 80009e40 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005414:	00fcb023          	sd	a5,0(s9)
    80005418:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    8000541c:	00391793          	slli	a5,s2,0x3
    80005420:	00fa07b3          	add	a5,s4,a5
    80005424:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80005428:	000c8513          	mv	a0,s9
    8000542c:	ffffe097          	auipc	ra,0xffffe
    80005430:	2ac080e7          	jalr	684(ra) # 800036d8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80005434:	0019091b          	addiw	s2,s2,1
    80005438:	05395263          	bge	s2,s3,8000547c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    8000543c:	00191493          	slli	s1,s2,0x1
    80005440:	012484b3          	add	s1,s1,s2
    80005444:	00349493          	slli	s1,s1,0x3
    80005448:	009b04b3          	add	s1,s6,s1
    8000544c:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80005450:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80005454:	00005797          	auipc	a5,0x5
    80005458:	b547b783          	ld	a5,-1196(a5) # 80009fa8 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000545c:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80005460:	01800513          	li	a0,24
    80005464:	ffffe097          	auipc	ra,0xffffe
    80005468:	11c080e7          	jalr	284(ra) # 80003580 <_Znwm>
    8000546c:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	300080e7          	jalr	768(ra) # 80003770 <_ZN6ThreadC1Ev>
    80005478:	f95ff06f          	j	8000540c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	2a4080e7          	jalr	676(ra) # 80003720 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80005484:	00000493          	li	s1,0
    80005488:	0099ce63          	blt	s3,s1,800054a4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    8000548c:	00005517          	auipc	a0,0x5
    80005490:	b1c53503          	ld	a0,-1252(a0) # 80009fa8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80005494:	ffffe097          	auipc	ra,0xffffe
    80005498:	358080e7          	jalr	856(ra) # 800037ec <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    8000549c:	0014849b          	addiw	s1,s1,1
    800054a0:	fe9ff06f          	j	80005488 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    800054a4:	00005517          	auipc	a0,0x5
    800054a8:	b0453503          	ld	a0,-1276(a0) # 80009fa8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800054ac:	00050863          	beqz	a0,800054bc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    800054b0:	00053783          	ld	a5,0(a0)
    800054b4:	0087b783          	ld	a5,8(a5)
    800054b8:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800054bc:	00000493          	li	s1,0
    800054c0:	0080006f          	j	800054c8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    800054c4:	0014849b          	addiw	s1,s1,1
    800054c8:	0334d263          	bge	s1,s3,800054ec <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    800054cc:	00349793          	slli	a5,s1,0x3
    800054d0:	00fa07b3          	add	a5,s4,a5
    800054d4:	0007b503          	ld	a0,0(a5)
    800054d8:	fe0506e3          	beqz	a0,800054c4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    800054dc:	00053783          	ld	a5,0(a0)
    800054e0:	0087b783          	ld	a5,8(a5)
    800054e4:	000780e7          	jalr	a5
    800054e8:	fddff06f          	j	800054c4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    800054ec:	000b8a63          	beqz	s7,80005500 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    800054f0:	000bb783          	ld	a5,0(s7)
    800054f4:	0087b783          	ld	a5,8(a5)
    800054f8:	000b8513          	mv	a0,s7
    800054fc:	000780e7          	jalr	a5
        delete buffer;
    80005500:	000a8e63          	beqz	s5,8000551c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80005504:	000a8513          	mv	a0,s5
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	bb8080e7          	jalr	-1096(ra) # 800050c0 <_ZN9BufferCPPD1Ev>
    80005510:	000a8513          	mv	a0,s5
    80005514:	ffffe097          	auipc	ra,0xffffe
    80005518:	094080e7          	jalr	148(ra) # 800035a8 <_ZdlPv>
    8000551c:	000c0113          	mv	sp,s8
    }
    80005520:	f8040113          	addi	sp,s0,-128
    80005524:	07813083          	ld	ra,120(sp)
    80005528:	07013403          	ld	s0,112(sp)
    8000552c:	06813483          	ld	s1,104(sp)
    80005530:	06013903          	ld	s2,96(sp)
    80005534:	05813983          	ld	s3,88(sp)
    80005538:	05013a03          	ld	s4,80(sp)
    8000553c:	04813a83          	ld	s5,72(sp)
    80005540:	04013b03          	ld	s6,64(sp)
    80005544:	03813b83          	ld	s7,56(sp)
    80005548:	03013c03          	ld	s8,48(sp)
    8000554c:	02813c83          	ld	s9,40(sp)
    80005550:	08010113          	addi	sp,sp,128
    80005554:	00008067          	ret
    80005558:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    8000555c:	000a8513          	mv	a0,s5
    80005560:	ffffe097          	auipc	ra,0xffffe
    80005564:	048080e7          	jalr	72(ra) # 800035a8 <_ZdlPv>
    80005568:	00048513          	mv	a0,s1
    8000556c:	00006097          	auipc	ra,0x6
    80005570:	b0c080e7          	jalr	-1268(ra) # 8000b078 <_Unwind_Resume>
    80005574:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80005578:	00048513          	mv	a0,s1
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	02c080e7          	jalr	44(ra) # 800035a8 <_ZdlPv>
    80005584:	00090513          	mv	a0,s2
    80005588:	00006097          	auipc	ra,0x6
    8000558c:	af0080e7          	jalr	-1296(ra) # 8000b078 <_Unwind_Resume>
    80005590:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80005594:	000b8513          	mv	a0,s7
    80005598:	ffffe097          	auipc	ra,0xffffe
    8000559c:	010080e7          	jalr	16(ra) # 800035a8 <_ZdlPv>
    800055a0:	00048513          	mv	a0,s1
    800055a4:	00006097          	auipc	ra,0x6
    800055a8:	ad4080e7          	jalr	-1324(ra) # 8000b078 <_Unwind_Resume>
    800055ac:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800055b0:	00048513          	mv	a0,s1
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	ff4080e7          	jalr	-12(ra) # 800035a8 <_ZdlPv>
    800055bc:	00090513          	mv	a0,s2
    800055c0:	00006097          	auipc	ra,0x6
    800055c4:	ab8080e7          	jalr	-1352(ra) # 8000b078 <_Unwind_Resume>
    800055c8:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800055cc:	000c8513          	mv	a0,s9
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	fd8080e7          	jalr	-40(ra) # 800035a8 <_ZdlPv>
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00006097          	auipc	ra,0x6
    800055e0:	a9c080e7          	jalr	-1380(ra) # 8000b078 <_Unwind_Resume>

00000000800055e4 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800055e4:	ff010113          	addi	sp,sp,-16
    800055e8:	00113423          	sd	ra,8(sp)
    800055ec:	00813023          	sd	s0,0(sp)
    800055f0:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	bcc080e7          	jalr	-1076(ra) # 800051c0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    800055fc:	00813083          	ld	ra,8(sp)
    80005600:	00013403          	ld	s0,0(sp)
    80005604:	01010113          	addi	sp,sp,16
    80005608:	00008067          	ret

000000008000560c <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    8000560c:	fd010113          	addi	sp,sp,-48
    80005610:	02113423          	sd	ra,40(sp)
    80005614:	02813023          	sd	s0,32(sp)
    80005618:	00913c23          	sd	s1,24(sp)
    8000561c:	01213823          	sd	s2,16(sp)
    80005620:	01313423          	sd	s3,8(sp)
    80005624:	03010413          	addi	s0,sp,48
    80005628:	00050913          	mv	s2,a0
            int i = 0;
    8000562c:	00000993          	li	s3,0
    80005630:	0100006f          	j	80005640 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80005634:	00a00513          	li	a0,10
    80005638:	ffffe097          	auipc	ra,0xffffe
    8000563c:	234080e7          	jalr	564(ra) # 8000386c <_ZN7Console4putcEc>
            while (!threadEnd) {
    80005640:	00005797          	auipc	a5,0x5
    80005644:	9607a783          	lw	a5,-1696(a5) # 80009fa0 <_ZN19ConsumerProducerCPP9threadEndE>
    80005648:	04079a63          	bnez	a5,8000569c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    8000564c:	01093783          	ld	a5,16(s2)
    80005650:	0087b503          	ld	a0,8(a5)
    80005654:	00000097          	auipc	ra,0x0
    80005658:	958080e7          	jalr	-1704(ra) # 80004fac <_ZN9BufferCPP3getEv>
                i++;
    8000565c:	0019849b          	addiw	s1,s3,1
    80005660:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80005664:	0ff57513          	andi	a0,a0,255
    80005668:	ffffe097          	auipc	ra,0xffffe
    8000566c:	204080e7          	jalr	516(ra) # 8000386c <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80005670:	05000793          	li	a5,80
    80005674:	02f4e4bb          	remw	s1,s1,a5
    80005678:	fc0494e3          	bnez	s1,80005640 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    8000567c:	fb9ff06f          	j	80005634 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80005680:	01093783          	ld	a5,16(s2)
    80005684:	0087b503          	ld	a0,8(a5)
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	924080e7          	jalr	-1756(ra) # 80004fac <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80005690:	0ff57513          	andi	a0,a0,255
    80005694:	ffffe097          	auipc	ra,0xffffe
    80005698:	1d8080e7          	jalr	472(ra) # 8000386c <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    8000569c:	01093783          	ld	a5,16(s2)
    800056a0:	0087b503          	ld	a0,8(a5)
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	994080e7          	jalr	-1644(ra) # 80005038 <_ZN9BufferCPP6getCntEv>
    800056ac:	fca04ae3          	bgtz	a0,80005680 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800056b0:	01093783          	ld	a5,16(s2)
    800056b4:	0107b503          	ld	a0,16(a5)
    800056b8:	ffffe097          	auipc	ra,0xffffe
    800056bc:	160080e7          	jalr	352(ra) # 80003818 <_ZN9Semaphore6signalEv>
        }
    800056c0:	02813083          	ld	ra,40(sp)
    800056c4:	02013403          	ld	s0,32(sp)
    800056c8:	01813483          	ld	s1,24(sp)
    800056cc:	01013903          	ld	s2,16(sp)
    800056d0:	00813983          	ld	s3,8(sp)
    800056d4:	03010113          	addi	sp,sp,48
    800056d8:	00008067          	ret

00000000800056dc <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    800056dc:	ff010113          	addi	sp,sp,-16
    800056e0:	00113423          	sd	ra,8(sp)
    800056e4:	00813023          	sd	s0,0(sp)
    800056e8:	01010413          	addi	s0,sp,16
    800056ec:	00004797          	auipc	a5,0x4
    800056f0:	77c78793          	addi	a5,a5,1916 # 80009e68 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800056f4:	00f53023          	sd	a5,0(a0)
    800056f8:	ffffe097          	auipc	ra,0xffffe
    800056fc:	d80080e7          	jalr	-640(ra) # 80003478 <_ZN6ThreadD1Ev>
    80005700:	00813083          	ld	ra,8(sp)
    80005704:	00013403          	ld	s0,0(sp)
    80005708:	01010113          	addi	sp,sp,16
    8000570c:	00008067          	ret

0000000080005710 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80005710:	fe010113          	addi	sp,sp,-32
    80005714:	00113c23          	sd	ra,24(sp)
    80005718:	00813823          	sd	s0,16(sp)
    8000571c:	00913423          	sd	s1,8(sp)
    80005720:	02010413          	addi	s0,sp,32
    80005724:	00050493          	mv	s1,a0
    80005728:	00004797          	auipc	a5,0x4
    8000572c:	74078793          	addi	a5,a5,1856 # 80009e68 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005730:	00f53023          	sd	a5,0(a0)
    80005734:	ffffe097          	auipc	ra,0xffffe
    80005738:	d44080e7          	jalr	-700(ra) # 80003478 <_ZN6ThreadD1Ev>
    8000573c:	00048513          	mv	a0,s1
    80005740:	ffffe097          	auipc	ra,0xffffe
    80005744:	e68080e7          	jalr	-408(ra) # 800035a8 <_ZdlPv>
    80005748:	01813083          	ld	ra,24(sp)
    8000574c:	01013403          	ld	s0,16(sp)
    80005750:	00813483          	ld	s1,8(sp)
    80005754:	02010113          	addi	sp,sp,32
    80005758:	00008067          	ret

000000008000575c <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    8000575c:	ff010113          	addi	sp,sp,-16
    80005760:	00113423          	sd	ra,8(sp)
    80005764:	00813023          	sd	s0,0(sp)
    80005768:	01010413          	addi	s0,sp,16
    8000576c:	00004797          	auipc	a5,0x4
    80005770:	6ac78793          	addi	a5,a5,1708 # 80009e18 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80005774:	00f53023          	sd	a5,0(a0)
    80005778:	ffffe097          	auipc	ra,0xffffe
    8000577c:	d00080e7          	jalr	-768(ra) # 80003478 <_ZN6ThreadD1Ev>
    80005780:	00813083          	ld	ra,8(sp)
    80005784:	00013403          	ld	s0,0(sp)
    80005788:	01010113          	addi	sp,sp,16
    8000578c:	00008067          	ret

0000000080005790 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80005790:	fe010113          	addi	sp,sp,-32
    80005794:	00113c23          	sd	ra,24(sp)
    80005798:	00813823          	sd	s0,16(sp)
    8000579c:	00913423          	sd	s1,8(sp)
    800057a0:	02010413          	addi	s0,sp,32
    800057a4:	00050493          	mv	s1,a0
    800057a8:	00004797          	auipc	a5,0x4
    800057ac:	67078793          	addi	a5,a5,1648 # 80009e18 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800057b0:	00f53023          	sd	a5,0(a0)
    800057b4:	ffffe097          	auipc	ra,0xffffe
    800057b8:	cc4080e7          	jalr	-828(ra) # 80003478 <_ZN6ThreadD1Ev>
    800057bc:	00048513          	mv	a0,s1
    800057c0:	ffffe097          	auipc	ra,0xffffe
    800057c4:	de8080e7          	jalr	-536(ra) # 800035a8 <_ZdlPv>
    800057c8:	01813083          	ld	ra,24(sp)
    800057cc:	01013403          	ld	s0,16(sp)
    800057d0:	00813483          	ld	s1,8(sp)
    800057d4:	02010113          	addi	sp,sp,32
    800057d8:	00008067          	ret

00000000800057dc <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    800057dc:	ff010113          	addi	sp,sp,-16
    800057e0:	00113423          	sd	ra,8(sp)
    800057e4:	00813023          	sd	s0,0(sp)
    800057e8:	01010413          	addi	s0,sp,16
    800057ec:	00004797          	auipc	a5,0x4
    800057f0:	65478793          	addi	a5,a5,1620 # 80009e40 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800057f4:	00f53023          	sd	a5,0(a0)
    800057f8:	ffffe097          	auipc	ra,0xffffe
    800057fc:	c80080e7          	jalr	-896(ra) # 80003478 <_ZN6ThreadD1Ev>
    80005800:	00813083          	ld	ra,8(sp)
    80005804:	00013403          	ld	s0,0(sp)
    80005808:	01010113          	addi	sp,sp,16
    8000580c:	00008067          	ret

0000000080005810 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80005810:	fe010113          	addi	sp,sp,-32
    80005814:	00113c23          	sd	ra,24(sp)
    80005818:	00813823          	sd	s0,16(sp)
    8000581c:	00913423          	sd	s1,8(sp)
    80005820:	02010413          	addi	s0,sp,32
    80005824:	00050493          	mv	s1,a0
    80005828:	00004797          	auipc	a5,0x4
    8000582c:	61878793          	addi	a5,a5,1560 # 80009e40 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005830:	00f53023          	sd	a5,0(a0)
    80005834:	ffffe097          	auipc	ra,0xffffe
    80005838:	c44080e7          	jalr	-956(ra) # 80003478 <_ZN6ThreadD1Ev>
    8000583c:	00048513          	mv	a0,s1
    80005840:	ffffe097          	auipc	ra,0xffffe
    80005844:	d68080e7          	jalr	-664(ra) # 800035a8 <_ZdlPv>
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	00813483          	ld	s1,8(sp)
    80005854:	02010113          	addi	sp,sp,32
    80005858:	00008067          	ret

000000008000585c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    8000585c:	fe010113          	addi	sp,sp,-32
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	00813823          	sd	s0,16(sp)
    80005868:	00913423          	sd	s1,8(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	39c080e7          	jalr	924(ra) # 80001c10 <_Z4getcv>
    8000587c:	0005059b          	sext.w	a1,a0
    80005880:	01b00793          	li	a5,27
    80005884:	00f58c63          	beq	a1,a5,8000589c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80005888:	0104b783          	ld	a5,16(s1)
    8000588c:	0087b503          	ld	a0,8(a5)
    80005890:	fffff097          	auipc	ra,0xfffff
    80005894:	68c080e7          	jalr	1676(ra) # 80004f1c <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80005898:	fddff06f          	j	80005874 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    8000589c:	00100793          	li	a5,1
    800058a0:	00004717          	auipc	a4,0x4
    800058a4:	70f72023          	sw	a5,1792(a4) # 80009fa0 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800058a8:	0104b783          	ld	a5,16(s1)
    800058ac:	02100593          	li	a1,33
    800058b0:	0087b503          	ld	a0,8(a5)
    800058b4:	fffff097          	auipc	ra,0xfffff
    800058b8:	668080e7          	jalr	1640(ra) # 80004f1c <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800058bc:	0104b783          	ld	a5,16(s1)
    800058c0:	0107b503          	ld	a0,16(a5)
    800058c4:	ffffe097          	auipc	ra,0xffffe
    800058c8:	f54080e7          	jalr	-172(ra) # 80003818 <_ZN9Semaphore6signalEv>
        }
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	02010113          	addi	sp,sp,32
    800058dc:	00008067          	ret

00000000800058e0 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800058e0:	fe010113          	addi	sp,sp,-32
    800058e4:	00113c23          	sd	ra,24(sp)
    800058e8:	00813823          	sd	s0,16(sp)
    800058ec:	00913423          	sd	s1,8(sp)
    800058f0:	01213023          	sd	s2,0(sp)
    800058f4:	02010413          	addi	s0,sp,32
    800058f8:	00050493          	mv	s1,a0
            int i = 0;
    800058fc:	00000913          	li	s2,0
            while (!threadEnd) {
    80005900:	00004797          	auipc	a5,0x4
    80005904:	6a07a783          	lw	a5,1696(a5) # 80009fa0 <_ZN19ConsumerProducerCPP9threadEndE>
    80005908:	04079263          	bnez	a5,8000594c <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    8000590c:	0104b783          	ld	a5,16(s1)
    80005910:	0007a583          	lw	a1,0(a5)
    80005914:	0305859b          	addiw	a1,a1,48
    80005918:	0087b503          	ld	a0,8(a5)
    8000591c:	fffff097          	auipc	ra,0xfffff
    80005920:	600080e7          	jalr	1536(ra) # 80004f1c <_ZN9BufferCPP3putEi>
                i++;
    80005924:	0019071b          	addiw	a4,s2,1
    80005928:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    8000592c:	0104b783          	ld	a5,16(s1)
    80005930:	0007a783          	lw	a5,0(a5)
    80005934:	00e787bb          	addw	a5,a5,a4
    80005938:	00500513          	li	a0,5
    8000593c:	02a7e53b          	remw	a0,a5,a0
    80005940:	ffffe097          	auipc	ra,0xffffe
    80005944:	e08080e7          	jalr	-504(ra) # 80003748 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80005948:	fb9ff06f          	j	80005900 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    8000594c:	0104b783          	ld	a5,16(s1)
    80005950:	0107b503          	ld	a0,16(a5)
    80005954:	ffffe097          	auipc	ra,0xffffe
    80005958:	ec4080e7          	jalr	-316(ra) # 80003818 <_ZN9Semaphore6signalEv>
        }
    8000595c:	01813083          	ld	ra,24(sp)
    80005960:	01013403          	ld	s0,16(sp)
    80005964:	00813483          	ld	s1,8(sp)
    80005968:	00013903          	ld	s2,0(sp)
    8000596c:	02010113          	addi	sp,sp,32
    80005970:	00008067          	ret

0000000080005974 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005974:	fe010113          	addi	sp,sp,-32
    80005978:	00113c23          	sd	ra,24(sp)
    8000597c:	00813823          	sd	s0,16(sp)
    80005980:	00913423          	sd	s1,8(sp)
    80005984:	01213023          	sd	s2,0(sp)
    80005988:	02010413          	addi	s0,sp,32
    8000598c:	00050493          	mv	s1,a0
    80005990:	00058913          	mv	s2,a1
    80005994:	0015879b          	addiw	a5,a1,1
    80005998:	0007851b          	sext.w	a0,a5
    8000599c:	00f4a023          	sw	a5,0(s1)
    800059a0:	0004a823          	sw	zero,16(s1)
    800059a4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800059a8:	00251513          	slli	a0,a0,0x2
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	f74080e7          	jalr	-140(ra) # 80001920 <_Z9mem_allocm>
    800059b4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800059b8:	00000593          	li	a1,0
    800059bc:	02048513          	addi	a0,s1,32
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	158080e7          	jalr	344(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    800059c8:	00090593          	mv	a1,s2
    800059cc:	01848513          	addi	a0,s1,24
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	148080e7          	jalr	328(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    800059d8:	00100593          	li	a1,1
    800059dc:	02848513          	addi	a0,s1,40
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	138080e7          	jalr	312(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    800059e8:	00100593          	li	a1,1
    800059ec:	03048513          	addi	a0,s1,48
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	128080e7          	jalr	296(ra) # 80001b18 <_Z8sem_openPP10KSemaphorej>
}
    800059f8:	01813083          	ld	ra,24(sp)
    800059fc:	01013403          	ld	s0,16(sp)
    80005a00:	00813483          	ld	s1,8(sp)
    80005a04:	00013903          	ld	s2,0(sp)
    80005a08:	02010113          	addi	sp,sp,32
    80005a0c:	00008067          	ret

0000000080005a10 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a10:	fe010113          	addi	sp,sp,-32
    80005a14:	00113c23          	sd	ra,24(sp)
    80005a18:	00813823          	sd	s0,16(sp)
    80005a1c:	00913423          	sd	s1,8(sp)
    80005a20:	01213023          	sd	s2,0(sp)
    80005a24:	02010413          	addi	s0,sp,32
    80005a28:	00050493          	mv	s1,a0
    80005a2c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a30:	01853503          	ld	a0,24(a0)
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	144080e7          	jalr	324(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    80005a3c:	0304b503          	ld	a0,48(s1)
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	138080e7          	jalr	312(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    80005a48:	0084b783          	ld	a5,8(s1)
    80005a4c:	0144a703          	lw	a4,20(s1)
    80005a50:	00271713          	slli	a4,a4,0x2
    80005a54:	00e787b3          	add	a5,a5,a4
    80005a58:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a5c:	0144a783          	lw	a5,20(s1)
    80005a60:	0017879b          	addiw	a5,a5,1
    80005a64:	0004a703          	lw	a4,0(s1)
    80005a68:	02e7e7bb          	remw	a5,a5,a4
    80005a6c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a70:	0304b503          	ld	a0,48(s1)
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	14c080e7          	jalr	332(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80005a7c:	0204b503          	ld	a0,32(s1)
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	140080e7          	jalr	320(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>

}
    80005a88:	01813083          	ld	ra,24(sp)
    80005a8c:	01013403          	ld	s0,16(sp)
    80005a90:	00813483          	ld	s1,8(sp)
    80005a94:	00013903          	ld	s2,0(sp)
    80005a98:	02010113          	addi	sp,sp,32
    80005a9c:	00008067          	ret

0000000080005aa0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005aa0:	fe010113          	addi	sp,sp,-32
    80005aa4:	00113c23          	sd	ra,24(sp)
    80005aa8:	00813823          	sd	s0,16(sp)
    80005aac:	00913423          	sd	s1,8(sp)
    80005ab0:	01213023          	sd	s2,0(sp)
    80005ab4:	02010413          	addi	s0,sp,32
    80005ab8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005abc:	02053503          	ld	a0,32(a0)
    80005ac0:	ffffc097          	auipc	ra,0xffffc
    80005ac4:	0b8080e7          	jalr	184(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80005ac8:	0284b503          	ld	a0,40(s1)
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	0ac080e7          	jalr	172(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80005ad4:	0084b703          	ld	a4,8(s1)
    80005ad8:	0104a783          	lw	a5,16(s1)
    80005adc:	00279693          	slli	a3,a5,0x2
    80005ae0:	00d70733          	add	a4,a4,a3
    80005ae4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005ae8:	0017879b          	addiw	a5,a5,1
    80005aec:	0004a703          	lw	a4,0(s1)
    80005af0:	02e7e7bb          	remw	a5,a5,a4
    80005af4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005af8:	0284b503          	ld	a0,40(s1)
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	0c4080e7          	jalr	196(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    80005b04:	0184b503          	ld	a0,24(s1)
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	0b8080e7          	jalr	184(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80005b10:	00090513          	mv	a0,s2
    80005b14:	01813083          	ld	ra,24(sp)
    80005b18:	01013403          	ld	s0,16(sp)
    80005b1c:	00813483          	ld	s1,8(sp)
    80005b20:	00013903          	ld	s2,0(sp)
    80005b24:	02010113          	addi	sp,sp,32
    80005b28:	00008067          	ret

0000000080005b2c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005b2c:	fe010113          	addi	sp,sp,-32
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	00813823          	sd	s0,16(sp)
    80005b38:	00913423          	sd	s1,8(sp)
    80005b3c:	01213023          	sd	s2,0(sp)
    80005b40:	02010413          	addi	s0,sp,32
    80005b44:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005b48:	02853503          	ld	a0,40(a0)
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	02c080e7          	jalr	44(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    80005b54:	0304b503          	ld	a0,48(s1)
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	020080e7          	jalr	32(ra) # 80001b78 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    80005b60:	0144a783          	lw	a5,20(s1)
    80005b64:	0104a903          	lw	s2,16(s1)
    80005b68:	0327ce63          	blt	a5,s2,80005ba4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005b6c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005b70:	0304b503          	ld	a0,48(s1)
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	04c080e7          	jalr	76(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80005b7c:	0284b503          	ld	a0,40(s1)
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	040080e7          	jalr	64(ra) # 80001bc0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80005b88:	00090513          	mv	a0,s2
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	00813483          	ld	s1,8(sp)
    80005b98:	00013903          	ld	s2,0(sp)
    80005b9c:	02010113          	addi	sp,sp,32
    80005ba0:	00008067          	ret
        ret = cap - head + tail;
    80005ba4:	0004a703          	lw	a4,0(s1)
    80005ba8:	4127093b          	subw	s2,a4,s2
    80005bac:	00f9093b          	addw	s2,s2,a5
    80005bb0:	fc1ff06f          	j	80005b70 <_ZN6Buffer6getCntEv+0x44>

0000000080005bb4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005bb4:	fe010113          	addi	sp,sp,-32
    80005bb8:	00113c23          	sd	ra,24(sp)
    80005bbc:	00813823          	sd	s0,16(sp)
    80005bc0:	00913423          	sd	s1,8(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    80005bc8:	00050493          	mv	s1,a0
    putc('\n');
    80005bcc:	00a00513          	li	a0,10
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	068080e7          	jalr	104(ra) # 80001c38 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005bd8:	00002517          	auipc	a0,0x2
    80005bdc:	60850513          	addi	a0,a0,1544 # 800081e0 <_ZZ12printIntRadimE6digits+0x10>
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	f3c080e7          	jalr	-196(ra) # 80004b1c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005be8:	00048513          	mv	a0,s1
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	f40080e7          	jalr	-192(ra) # 80005b2c <_ZN6Buffer6getCntEv>
    80005bf4:	02a05c63          	blez	a0,80005c2c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005bf8:	0084b783          	ld	a5,8(s1)
    80005bfc:	0104a703          	lw	a4,16(s1)
    80005c00:	00271713          	slli	a4,a4,0x2
    80005c04:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c08:	0007c503          	lbu	a0,0(a5)
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	02c080e7          	jalr	44(ra) # 80001c38 <_Z4putcc>
        head = (head + 1) % cap;
    80005c14:	0104a783          	lw	a5,16(s1)
    80005c18:	0017879b          	addiw	a5,a5,1
    80005c1c:	0004a703          	lw	a4,0(s1)
    80005c20:	02e7e7bb          	remw	a5,a5,a4
    80005c24:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005c28:	fc1ff06f          	j	80005be8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005c2c:	02100513          	li	a0,33
    80005c30:	ffffc097          	auipc	ra,0xffffc
    80005c34:	008080e7          	jalr	8(ra) # 80001c38 <_Z4putcc>
    putc('\n');
    80005c38:	00a00513          	li	a0,10
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	ffc080e7          	jalr	-4(ra) # 80001c38 <_Z4putcc>
    mem_free(buffer);
    80005c44:	0084b503          	ld	a0,8(s1)
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	d18080e7          	jalr	-744(ra) # 80001960 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005c50:	0204b503          	ld	a0,32(s1)
    80005c54:	ffffc097          	auipc	ra,0xffffc
    80005c58:	efc080e7          	jalr	-260(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    80005c5c:	0184b503          	ld	a0,24(s1)
    80005c60:	ffffc097          	auipc	ra,0xffffc
    80005c64:	ef0080e7          	jalr	-272(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    80005c68:	0304b503          	ld	a0,48(s1)
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	ee4080e7          	jalr	-284(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80005c74:	0284b503          	ld	a0,40(s1)
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	ed8080e7          	jalr	-296(ra) # 80001b50 <_Z9sem_closeP10KSemaphore>
}
    80005c80:	01813083          	ld	ra,24(sp)
    80005c84:	01013403          	ld	s0,16(sp)
    80005c88:	00813483          	ld	s1,8(sp)
    80005c8c:	02010113          	addi	sp,sp,32
    80005c90:	00008067          	ret

0000000080005c94 <start>:
    80005c94:	ff010113          	addi	sp,sp,-16
    80005c98:	00813423          	sd	s0,8(sp)
    80005c9c:	01010413          	addi	s0,sp,16
    80005ca0:	300027f3          	csrr	a5,mstatus
    80005ca4:	ffffe737          	lui	a4,0xffffe
    80005ca8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff35ef>
    80005cac:	00e7f7b3          	and	a5,a5,a4
    80005cb0:	00001737          	lui	a4,0x1
    80005cb4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005cb8:	00e7e7b3          	or	a5,a5,a4
    80005cbc:	30079073          	csrw	mstatus,a5
    80005cc0:	00000797          	auipc	a5,0x0
    80005cc4:	16078793          	addi	a5,a5,352 # 80005e20 <system_main>
    80005cc8:	34179073          	csrw	mepc,a5
    80005ccc:	00000793          	li	a5,0
    80005cd0:	18079073          	csrw	satp,a5
    80005cd4:	000107b7          	lui	a5,0x10
    80005cd8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005cdc:	30279073          	csrw	medeleg,a5
    80005ce0:	30379073          	csrw	mideleg,a5
    80005ce4:	104027f3          	csrr	a5,sie
    80005ce8:	2227e793          	ori	a5,a5,546
    80005cec:	10479073          	csrw	sie,a5
    80005cf0:	fff00793          	li	a5,-1
    80005cf4:	00a7d793          	srli	a5,a5,0xa
    80005cf8:	3b079073          	csrw	pmpaddr0,a5
    80005cfc:	00f00793          	li	a5,15
    80005d00:	3a079073          	csrw	pmpcfg0,a5
    80005d04:	f14027f3          	csrr	a5,mhartid
    80005d08:	0200c737          	lui	a4,0x200c
    80005d0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d10:	0007869b          	sext.w	a3,a5
    80005d14:	00269713          	slli	a4,a3,0x2
    80005d18:	000f4637          	lui	a2,0xf4
    80005d1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d20:	00d70733          	add	a4,a4,a3
    80005d24:	0037979b          	slliw	a5,a5,0x3
    80005d28:	020046b7          	lui	a3,0x2004
    80005d2c:	00d787b3          	add	a5,a5,a3
    80005d30:	00c585b3          	add	a1,a1,a2
    80005d34:	00371693          	slli	a3,a4,0x3
    80005d38:	00004717          	auipc	a4,0x4
    80005d3c:	27870713          	addi	a4,a4,632 # 80009fb0 <timer_scratch>
    80005d40:	00b7b023          	sd	a1,0(a5)
    80005d44:	00d70733          	add	a4,a4,a3
    80005d48:	00f73c23          	sd	a5,24(a4)
    80005d4c:	02c73023          	sd	a2,32(a4)
    80005d50:	34071073          	csrw	mscratch,a4
    80005d54:	00000797          	auipc	a5,0x0
    80005d58:	6ec78793          	addi	a5,a5,1772 # 80006440 <timervec>
    80005d5c:	30579073          	csrw	mtvec,a5
    80005d60:	300027f3          	csrr	a5,mstatus
    80005d64:	0087e793          	ori	a5,a5,8
    80005d68:	30079073          	csrw	mstatus,a5
    80005d6c:	304027f3          	csrr	a5,mie
    80005d70:	0807e793          	ori	a5,a5,128
    80005d74:	30479073          	csrw	mie,a5
    80005d78:	f14027f3          	csrr	a5,mhartid
    80005d7c:	0007879b          	sext.w	a5,a5
    80005d80:	00078213          	mv	tp,a5
    80005d84:	30200073          	mret
    80005d88:	00813403          	ld	s0,8(sp)
    80005d8c:	01010113          	addi	sp,sp,16
    80005d90:	00008067          	ret

0000000080005d94 <timerinit>:
    80005d94:	ff010113          	addi	sp,sp,-16
    80005d98:	00813423          	sd	s0,8(sp)
    80005d9c:	01010413          	addi	s0,sp,16
    80005da0:	f14027f3          	csrr	a5,mhartid
    80005da4:	0200c737          	lui	a4,0x200c
    80005da8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005dac:	0007869b          	sext.w	a3,a5
    80005db0:	00269713          	slli	a4,a3,0x2
    80005db4:	000f4637          	lui	a2,0xf4
    80005db8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005dbc:	00d70733          	add	a4,a4,a3
    80005dc0:	0037979b          	slliw	a5,a5,0x3
    80005dc4:	020046b7          	lui	a3,0x2004
    80005dc8:	00d787b3          	add	a5,a5,a3
    80005dcc:	00c585b3          	add	a1,a1,a2
    80005dd0:	00371693          	slli	a3,a4,0x3
    80005dd4:	00004717          	auipc	a4,0x4
    80005dd8:	1dc70713          	addi	a4,a4,476 # 80009fb0 <timer_scratch>
    80005ddc:	00b7b023          	sd	a1,0(a5)
    80005de0:	00d70733          	add	a4,a4,a3
    80005de4:	00f73c23          	sd	a5,24(a4)
    80005de8:	02c73023          	sd	a2,32(a4)
    80005dec:	34071073          	csrw	mscratch,a4
    80005df0:	00000797          	auipc	a5,0x0
    80005df4:	65078793          	addi	a5,a5,1616 # 80006440 <timervec>
    80005df8:	30579073          	csrw	mtvec,a5
    80005dfc:	300027f3          	csrr	a5,mstatus
    80005e00:	0087e793          	ori	a5,a5,8
    80005e04:	30079073          	csrw	mstatus,a5
    80005e08:	304027f3          	csrr	a5,mie
    80005e0c:	0807e793          	ori	a5,a5,128
    80005e10:	30479073          	csrw	mie,a5
    80005e14:	00813403          	ld	s0,8(sp)
    80005e18:	01010113          	addi	sp,sp,16
    80005e1c:	00008067          	ret

0000000080005e20 <system_main>:
    80005e20:	fe010113          	addi	sp,sp,-32
    80005e24:	00813823          	sd	s0,16(sp)
    80005e28:	00913423          	sd	s1,8(sp)
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	02010413          	addi	s0,sp,32
    80005e34:	00000097          	auipc	ra,0x0
    80005e38:	0c4080e7          	jalr	196(ra) # 80005ef8 <cpuid>
    80005e3c:	00004497          	auipc	s1,0x4
    80005e40:	0c448493          	addi	s1,s1,196 # 80009f00 <started>
    80005e44:	02050263          	beqz	a0,80005e68 <system_main+0x48>
    80005e48:	0004a783          	lw	a5,0(s1)
    80005e4c:	0007879b          	sext.w	a5,a5
    80005e50:	fe078ce3          	beqz	a5,80005e48 <system_main+0x28>
    80005e54:	0ff0000f          	fence
    80005e58:	00002517          	auipc	a0,0x2
    80005e5c:	4b850513          	addi	a0,a0,1208 # 80008310 <_ZZ12printIntRadimE6digits+0x140>
    80005e60:	00001097          	auipc	ra,0x1
    80005e64:	a7c080e7          	jalr	-1412(ra) # 800068dc <panic>
    80005e68:	00001097          	auipc	ra,0x1
    80005e6c:	9d0080e7          	jalr	-1584(ra) # 80006838 <consoleinit>
    80005e70:	00001097          	auipc	ra,0x1
    80005e74:	15c080e7          	jalr	348(ra) # 80006fcc <printfinit>
    80005e78:	00002517          	auipc	a0,0x2
    80005e7c:	3b850513          	addi	a0,a0,952 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80005e80:	00001097          	auipc	ra,0x1
    80005e84:	ab8080e7          	jalr	-1352(ra) # 80006938 <__printf>
    80005e88:	00002517          	auipc	a0,0x2
    80005e8c:	45850513          	addi	a0,a0,1112 # 800082e0 <_ZZ12printIntRadimE6digits+0x110>
    80005e90:	00001097          	auipc	ra,0x1
    80005e94:	aa8080e7          	jalr	-1368(ra) # 80006938 <__printf>
    80005e98:	00002517          	auipc	a0,0x2
    80005e9c:	39850513          	addi	a0,a0,920 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80005ea0:	00001097          	auipc	ra,0x1
    80005ea4:	a98080e7          	jalr	-1384(ra) # 80006938 <__printf>
    80005ea8:	00001097          	auipc	ra,0x1
    80005eac:	4b0080e7          	jalr	1200(ra) # 80007358 <kinit>
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	148080e7          	jalr	328(ra) # 80005ff8 <trapinit>
    80005eb8:	00000097          	auipc	ra,0x0
    80005ebc:	16c080e7          	jalr	364(ra) # 80006024 <trapinithart>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	5c0080e7          	jalr	1472(ra) # 80006480 <plicinit>
    80005ec8:	00000097          	auipc	ra,0x0
    80005ecc:	5e0080e7          	jalr	1504(ra) # 800064a8 <plicinithart>
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	078080e7          	jalr	120(ra) # 80005f48 <userinit>
    80005ed8:	0ff0000f          	fence
    80005edc:	00100793          	li	a5,1
    80005ee0:	00002517          	auipc	a0,0x2
    80005ee4:	41850513          	addi	a0,a0,1048 # 800082f8 <_ZZ12printIntRadimE6digits+0x128>
    80005ee8:	00f4a023          	sw	a5,0(s1)
    80005eec:	00001097          	auipc	ra,0x1
    80005ef0:	a4c080e7          	jalr	-1460(ra) # 80006938 <__printf>
    80005ef4:	0000006f          	j	80005ef4 <system_main+0xd4>

0000000080005ef8 <cpuid>:
    80005ef8:	ff010113          	addi	sp,sp,-16
    80005efc:	00813423          	sd	s0,8(sp)
    80005f00:	01010413          	addi	s0,sp,16
    80005f04:	00020513          	mv	a0,tp
    80005f08:	00813403          	ld	s0,8(sp)
    80005f0c:	0005051b          	sext.w	a0,a0
    80005f10:	01010113          	addi	sp,sp,16
    80005f14:	00008067          	ret

0000000080005f18 <mycpu>:
    80005f18:	ff010113          	addi	sp,sp,-16
    80005f1c:	00813423          	sd	s0,8(sp)
    80005f20:	01010413          	addi	s0,sp,16
    80005f24:	00020793          	mv	a5,tp
    80005f28:	00813403          	ld	s0,8(sp)
    80005f2c:	0007879b          	sext.w	a5,a5
    80005f30:	00779793          	slli	a5,a5,0x7
    80005f34:	00005517          	auipc	a0,0x5
    80005f38:	0ac50513          	addi	a0,a0,172 # 8000afe0 <cpus>
    80005f3c:	00f50533          	add	a0,a0,a5
    80005f40:	01010113          	addi	sp,sp,16
    80005f44:	00008067          	ret

0000000080005f48 <userinit>:
    80005f48:	ff010113          	addi	sp,sp,-16
    80005f4c:	00813423          	sd	s0,8(sp)
    80005f50:	01010413          	addi	s0,sp,16
    80005f54:	00813403          	ld	s0,8(sp)
    80005f58:	01010113          	addi	sp,sp,16
    80005f5c:	ffffd317          	auipc	t1,0xffffd
    80005f60:	44c30067          	jr	1100(t1) # 800033a8 <main>

0000000080005f64 <either_copyout>:
    80005f64:	ff010113          	addi	sp,sp,-16
    80005f68:	00813023          	sd	s0,0(sp)
    80005f6c:	00113423          	sd	ra,8(sp)
    80005f70:	01010413          	addi	s0,sp,16
    80005f74:	02051663          	bnez	a0,80005fa0 <either_copyout+0x3c>
    80005f78:	00058513          	mv	a0,a1
    80005f7c:	00060593          	mv	a1,a2
    80005f80:	0006861b          	sext.w	a2,a3
    80005f84:	00002097          	auipc	ra,0x2
    80005f88:	c60080e7          	jalr	-928(ra) # 80007be4 <__memmove>
    80005f8c:	00813083          	ld	ra,8(sp)
    80005f90:	00013403          	ld	s0,0(sp)
    80005f94:	00000513          	li	a0,0
    80005f98:	01010113          	addi	sp,sp,16
    80005f9c:	00008067          	ret
    80005fa0:	00002517          	auipc	a0,0x2
    80005fa4:	39850513          	addi	a0,a0,920 # 80008338 <_ZZ12printIntRadimE6digits+0x168>
    80005fa8:	00001097          	auipc	ra,0x1
    80005fac:	934080e7          	jalr	-1740(ra) # 800068dc <panic>

0000000080005fb0 <either_copyin>:
    80005fb0:	ff010113          	addi	sp,sp,-16
    80005fb4:	00813023          	sd	s0,0(sp)
    80005fb8:	00113423          	sd	ra,8(sp)
    80005fbc:	01010413          	addi	s0,sp,16
    80005fc0:	02059463          	bnez	a1,80005fe8 <either_copyin+0x38>
    80005fc4:	00060593          	mv	a1,a2
    80005fc8:	0006861b          	sext.w	a2,a3
    80005fcc:	00002097          	auipc	ra,0x2
    80005fd0:	c18080e7          	jalr	-1000(ra) # 80007be4 <__memmove>
    80005fd4:	00813083          	ld	ra,8(sp)
    80005fd8:	00013403          	ld	s0,0(sp)
    80005fdc:	00000513          	li	a0,0
    80005fe0:	01010113          	addi	sp,sp,16
    80005fe4:	00008067          	ret
    80005fe8:	00002517          	auipc	a0,0x2
    80005fec:	37850513          	addi	a0,a0,888 # 80008360 <_ZZ12printIntRadimE6digits+0x190>
    80005ff0:	00001097          	auipc	ra,0x1
    80005ff4:	8ec080e7          	jalr	-1812(ra) # 800068dc <panic>

0000000080005ff8 <trapinit>:
    80005ff8:	ff010113          	addi	sp,sp,-16
    80005ffc:	00813423          	sd	s0,8(sp)
    80006000:	01010413          	addi	s0,sp,16
    80006004:	00813403          	ld	s0,8(sp)
    80006008:	00002597          	auipc	a1,0x2
    8000600c:	38058593          	addi	a1,a1,896 # 80008388 <_ZZ12printIntRadimE6digits+0x1b8>
    80006010:	00005517          	auipc	a0,0x5
    80006014:	05050513          	addi	a0,a0,80 # 8000b060 <tickslock>
    80006018:	01010113          	addi	sp,sp,16
    8000601c:	00001317          	auipc	t1,0x1
    80006020:	5cc30067          	jr	1484(t1) # 800075e8 <initlock>

0000000080006024 <trapinithart>:
    80006024:	ff010113          	addi	sp,sp,-16
    80006028:	00813423          	sd	s0,8(sp)
    8000602c:	01010413          	addi	s0,sp,16
    80006030:	00000797          	auipc	a5,0x0
    80006034:	30078793          	addi	a5,a5,768 # 80006330 <kernelvec>
    80006038:	10579073          	csrw	stvec,a5
    8000603c:	00813403          	ld	s0,8(sp)
    80006040:	01010113          	addi	sp,sp,16
    80006044:	00008067          	ret

0000000080006048 <usertrap>:
    80006048:	ff010113          	addi	sp,sp,-16
    8000604c:	00813423          	sd	s0,8(sp)
    80006050:	01010413          	addi	s0,sp,16
    80006054:	00813403          	ld	s0,8(sp)
    80006058:	01010113          	addi	sp,sp,16
    8000605c:	00008067          	ret

0000000080006060 <usertrapret>:
    80006060:	ff010113          	addi	sp,sp,-16
    80006064:	00813423          	sd	s0,8(sp)
    80006068:	01010413          	addi	s0,sp,16
    8000606c:	00813403          	ld	s0,8(sp)
    80006070:	01010113          	addi	sp,sp,16
    80006074:	00008067          	ret

0000000080006078 <kerneltrap>:
    80006078:	fe010113          	addi	sp,sp,-32
    8000607c:	00813823          	sd	s0,16(sp)
    80006080:	00113c23          	sd	ra,24(sp)
    80006084:	00913423          	sd	s1,8(sp)
    80006088:	02010413          	addi	s0,sp,32
    8000608c:	142025f3          	csrr	a1,scause
    80006090:	100027f3          	csrr	a5,sstatus
    80006094:	0027f793          	andi	a5,a5,2
    80006098:	10079c63          	bnez	a5,800061b0 <kerneltrap+0x138>
    8000609c:	142027f3          	csrr	a5,scause
    800060a0:	0207ce63          	bltz	a5,800060dc <kerneltrap+0x64>
    800060a4:	00002517          	auipc	a0,0x2
    800060a8:	32c50513          	addi	a0,a0,812 # 800083d0 <_ZZ12printIntRadimE6digits+0x200>
    800060ac:	00001097          	auipc	ra,0x1
    800060b0:	88c080e7          	jalr	-1908(ra) # 80006938 <__printf>
    800060b4:	141025f3          	csrr	a1,sepc
    800060b8:	14302673          	csrr	a2,stval
    800060bc:	00002517          	auipc	a0,0x2
    800060c0:	32450513          	addi	a0,a0,804 # 800083e0 <_ZZ12printIntRadimE6digits+0x210>
    800060c4:	00001097          	auipc	ra,0x1
    800060c8:	874080e7          	jalr	-1932(ra) # 80006938 <__printf>
    800060cc:	00002517          	auipc	a0,0x2
    800060d0:	32c50513          	addi	a0,a0,812 # 800083f8 <_ZZ12printIntRadimE6digits+0x228>
    800060d4:	00001097          	auipc	ra,0x1
    800060d8:	808080e7          	jalr	-2040(ra) # 800068dc <panic>
    800060dc:	0ff7f713          	andi	a4,a5,255
    800060e0:	00900693          	li	a3,9
    800060e4:	04d70063          	beq	a4,a3,80006124 <kerneltrap+0xac>
    800060e8:	fff00713          	li	a4,-1
    800060ec:	03f71713          	slli	a4,a4,0x3f
    800060f0:	00170713          	addi	a4,a4,1
    800060f4:	fae798e3          	bne	a5,a4,800060a4 <kerneltrap+0x2c>
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	e00080e7          	jalr	-512(ra) # 80005ef8 <cpuid>
    80006100:	06050663          	beqz	a0,8000616c <kerneltrap+0xf4>
    80006104:	144027f3          	csrr	a5,sip
    80006108:	ffd7f793          	andi	a5,a5,-3
    8000610c:	14479073          	csrw	sip,a5
    80006110:	01813083          	ld	ra,24(sp)
    80006114:	01013403          	ld	s0,16(sp)
    80006118:	00813483          	ld	s1,8(sp)
    8000611c:	02010113          	addi	sp,sp,32
    80006120:	00008067          	ret
    80006124:	00000097          	auipc	ra,0x0
    80006128:	3d0080e7          	jalr	976(ra) # 800064f4 <plic_claim>
    8000612c:	00a00793          	li	a5,10
    80006130:	00050493          	mv	s1,a0
    80006134:	06f50863          	beq	a0,a5,800061a4 <kerneltrap+0x12c>
    80006138:	fc050ce3          	beqz	a0,80006110 <kerneltrap+0x98>
    8000613c:	00050593          	mv	a1,a0
    80006140:	00002517          	auipc	a0,0x2
    80006144:	27050513          	addi	a0,a0,624 # 800083b0 <_ZZ12printIntRadimE6digits+0x1e0>
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	7f0080e7          	jalr	2032(ra) # 80006938 <__printf>
    80006150:	01013403          	ld	s0,16(sp)
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	00048513          	mv	a0,s1
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	02010113          	addi	sp,sp,32
    80006164:	00000317          	auipc	t1,0x0
    80006168:	3c830067          	jr	968(t1) # 8000652c <plic_complete>
    8000616c:	00005517          	auipc	a0,0x5
    80006170:	ef450513          	addi	a0,a0,-268 # 8000b060 <tickslock>
    80006174:	00001097          	auipc	ra,0x1
    80006178:	498080e7          	jalr	1176(ra) # 8000760c <acquire>
    8000617c:	00004717          	auipc	a4,0x4
    80006180:	d8870713          	addi	a4,a4,-632 # 80009f04 <ticks>
    80006184:	00072783          	lw	a5,0(a4)
    80006188:	00005517          	auipc	a0,0x5
    8000618c:	ed850513          	addi	a0,a0,-296 # 8000b060 <tickslock>
    80006190:	0017879b          	addiw	a5,a5,1
    80006194:	00f72023          	sw	a5,0(a4)
    80006198:	00001097          	auipc	ra,0x1
    8000619c:	540080e7          	jalr	1344(ra) # 800076d8 <release>
    800061a0:	f65ff06f          	j	80006104 <kerneltrap+0x8c>
    800061a4:	00001097          	auipc	ra,0x1
    800061a8:	09c080e7          	jalr	156(ra) # 80007240 <uartintr>
    800061ac:	fa5ff06f          	j	80006150 <kerneltrap+0xd8>
    800061b0:	00002517          	auipc	a0,0x2
    800061b4:	1e050513          	addi	a0,a0,480 # 80008390 <_ZZ12printIntRadimE6digits+0x1c0>
    800061b8:	00000097          	auipc	ra,0x0
    800061bc:	724080e7          	jalr	1828(ra) # 800068dc <panic>

00000000800061c0 <clockintr>:
    800061c0:	fe010113          	addi	sp,sp,-32
    800061c4:	00813823          	sd	s0,16(sp)
    800061c8:	00913423          	sd	s1,8(sp)
    800061cc:	00113c23          	sd	ra,24(sp)
    800061d0:	02010413          	addi	s0,sp,32
    800061d4:	00005497          	auipc	s1,0x5
    800061d8:	e8c48493          	addi	s1,s1,-372 # 8000b060 <tickslock>
    800061dc:	00048513          	mv	a0,s1
    800061e0:	00001097          	auipc	ra,0x1
    800061e4:	42c080e7          	jalr	1068(ra) # 8000760c <acquire>
    800061e8:	00004717          	auipc	a4,0x4
    800061ec:	d1c70713          	addi	a4,a4,-740 # 80009f04 <ticks>
    800061f0:	00072783          	lw	a5,0(a4)
    800061f4:	01013403          	ld	s0,16(sp)
    800061f8:	01813083          	ld	ra,24(sp)
    800061fc:	00048513          	mv	a0,s1
    80006200:	0017879b          	addiw	a5,a5,1
    80006204:	00813483          	ld	s1,8(sp)
    80006208:	00f72023          	sw	a5,0(a4)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00001317          	auipc	t1,0x1
    80006214:	4c830067          	jr	1224(t1) # 800076d8 <release>

0000000080006218 <devintr>:
    80006218:	142027f3          	csrr	a5,scause
    8000621c:	00000513          	li	a0,0
    80006220:	0007c463          	bltz	a5,80006228 <devintr+0x10>
    80006224:	00008067          	ret
    80006228:	fe010113          	addi	sp,sp,-32
    8000622c:	00813823          	sd	s0,16(sp)
    80006230:	00113c23          	sd	ra,24(sp)
    80006234:	00913423          	sd	s1,8(sp)
    80006238:	02010413          	addi	s0,sp,32
    8000623c:	0ff7f713          	andi	a4,a5,255
    80006240:	00900693          	li	a3,9
    80006244:	04d70c63          	beq	a4,a3,8000629c <devintr+0x84>
    80006248:	fff00713          	li	a4,-1
    8000624c:	03f71713          	slli	a4,a4,0x3f
    80006250:	00170713          	addi	a4,a4,1
    80006254:	00e78c63          	beq	a5,a4,8000626c <devintr+0x54>
    80006258:	01813083          	ld	ra,24(sp)
    8000625c:	01013403          	ld	s0,16(sp)
    80006260:	00813483          	ld	s1,8(sp)
    80006264:	02010113          	addi	sp,sp,32
    80006268:	00008067          	ret
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	c8c080e7          	jalr	-884(ra) # 80005ef8 <cpuid>
    80006274:	06050663          	beqz	a0,800062e0 <devintr+0xc8>
    80006278:	144027f3          	csrr	a5,sip
    8000627c:	ffd7f793          	andi	a5,a5,-3
    80006280:	14479073          	csrw	sip,a5
    80006284:	01813083          	ld	ra,24(sp)
    80006288:	01013403          	ld	s0,16(sp)
    8000628c:	00813483          	ld	s1,8(sp)
    80006290:	00200513          	li	a0,2
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	258080e7          	jalr	600(ra) # 800064f4 <plic_claim>
    800062a4:	00a00793          	li	a5,10
    800062a8:	00050493          	mv	s1,a0
    800062ac:	06f50663          	beq	a0,a5,80006318 <devintr+0x100>
    800062b0:	00100513          	li	a0,1
    800062b4:	fa0482e3          	beqz	s1,80006258 <devintr+0x40>
    800062b8:	00048593          	mv	a1,s1
    800062bc:	00002517          	auipc	a0,0x2
    800062c0:	0f450513          	addi	a0,a0,244 # 800083b0 <_ZZ12printIntRadimE6digits+0x1e0>
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	674080e7          	jalr	1652(ra) # 80006938 <__printf>
    800062cc:	00048513          	mv	a0,s1
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	25c080e7          	jalr	604(ra) # 8000652c <plic_complete>
    800062d8:	00100513          	li	a0,1
    800062dc:	f7dff06f          	j	80006258 <devintr+0x40>
    800062e0:	00005517          	auipc	a0,0x5
    800062e4:	d8050513          	addi	a0,a0,-640 # 8000b060 <tickslock>
    800062e8:	00001097          	auipc	ra,0x1
    800062ec:	324080e7          	jalr	804(ra) # 8000760c <acquire>
    800062f0:	00004717          	auipc	a4,0x4
    800062f4:	c1470713          	addi	a4,a4,-1004 # 80009f04 <ticks>
    800062f8:	00072783          	lw	a5,0(a4)
    800062fc:	00005517          	auipc	a0,0x5
    80006300:	d6450513          	addi	a0,a0,-668 # 8000b060 <tickslock>
    80006304:	0017879b          	addiw	a5,a5,1
    80006308:	00f72023          	sw	a5,0(a4)
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	3cc080e7          	jalr	972(ra) # 800076d8 <release>
    80006314:	f65ff06f          	j	80006278 <devintr+0x60>
    80006318:	00001097          	auipc	ra,0x1
    8000631c:	f28080e7          	jalr	-216(ra) # 80007240 <uartintr>
    80006320:	fadff06f          	j	800062cc <devintr+0xb4>
	...

0000000080006330 <kernelvec>:
    80006330:	f0010113          	addi	sp,sp,-256
    80006334:	00113023          	sd	ra,0(sp)
    80006338:	00213423          	sd	sp,8(sp)
    8000633c:	00313823          	sd	gp,16(sp)
    80006340:	00413c23          	sd	tp,24(sp)
    80006344:	02513023          	sd	t0,32(sp)
    80006348:	02613423          	sd	t1,40(sp)
    8000634c:	02713823          	sd	t2,48(sp)
    80006350:	02813c23          	sd	s0,56(sp)
    80006354:	04913023          	sd	s1,64(sp)
    80006358:	04a13423          	sd	a0,72(sp)
    8000635c:	04b13823          	sd	a1,80(sp)
    80006360:	04c13c23          	sd	a2,88(sp)
    80006364:	06d13023          	sd	a3,96(sp)
    80006368:	06e13423          	sd	a4,104(sp)
    8000636c:	06f13823          	sd	a5,112(sp)
    80006370:	07013c23          	sd	a6,120(sp)
    80006374:	09113023          	sd	a7,128(sp)
    80006378:	09213423          	sd	s2,136(sp)
    8000637c:	09313823          	sd	s3,144(sp)
    80006380:	09413c23          	sd	s4,152(sp)
    80006384:	0b513023          	sd	s5,160(sp)
    80006388:	0b613423          	sd	s6,168(sp)
    8000638c:	0b713823          	sd	s7,176(sp)
    80006390:	0b813c23          	sd	s8,184(sp)
    80006394:	0d913023          	sd	s9,192(sp)
    80006398:	0da13423          	sd	s10,200(sp)
    8000639c:	0db13823          	sd	s11,208(sp)
    800063a0:	0dc13c23          	sd	t3,216(sp)
    800063a4:	0fd13023          	sd	t4,224(sp)
    800063a8:	0fe13423          	sd	t5,232(sp)
    800063ac:	0ff13823          	sd	t6,240(sp)
    800063b0:	cc9ff0ef          	jal	ra,80006078 <kerneltrap>
    800063b4:	00013083          	ld	ra,0(sp)
    800063b8:	00813103          	ld	sp,8(sp)
    800063bc:	01013183          	ld	gp,16(sp)
    800063c0:	02013283          	ld	t0,32(sp)
    800063c4:	02813303          	ld	t1,40(sp)
    800063c8:	03013383          	ld	t2,48(sp)
    800063cc:	03813403          	ld	s0,56(sp)
    800063d0:	04013483          	ld	s1,64(sp)
    800063d4:	04813503          	ld	a0,72(sp)
    800063d8:	05013583          	ld	a1,80(sp)
    800063dc:	05813603          	ld	a2,88(sp)
    800063e0:	06013683          	ld	a3,96(sp)
    800063e4:	06813703          	ld	a4,104(sp)
    800063e8:	07013783          	ld	a5,112(sp)
    800063ec:	07813803          	ld	a6,120(sp)
    800063f0:	08013883          	ld	a7,128(sp)
    800063f4:	08813903          	ld	s2,136(sp)
    800063f8:	09013983          	ld	s3,144(sp)
    800063fc:	09813a03          	ld	s4,152(sp)
    80006400:	0a013a83          	ld	s5,160(sp)
    80006404:	0a813b03          	ld	s6,168(sp)
    80006408:	0b013b83          	ld	s7,176(sp)
    8000640c:	0b813c03          	ld	s8,184(sp)
    80006410:	0c013c83          	ld	s9,192(sp)
    80006414:	0c813d03          	ld	s10,200(sp)
    80006418:	0d013d83          	ld	s11,208(sp)
    8000641c:	0d813e03          	ld	t3,216(sp)
    80006420:	0e013e83          	ld	t4,224(sp)
    80006424:	0e813f03          	ld	t5,232(sp)
    80006428:	0f013f83          	ld	t6,240(sp)
    8000642c:	10010113          	addi	sp,sp,256
    80006430:	10200073          	sret
    80006434:	00000013          	nop
    80006438:	00000013          	nop
    8000643c:	00000013          	nop

0000000080006440 <timervec>:
    80006440:	34051573          	csrrw	a0,mscratch,a0
    80006444:	00b53023          	sd	a1,0(a0)
    80006448:	00c53423          	sd	a2,8(a0)
    8000644c:	00d53823          	sd	a3,16(a0)
    80006450:	01853583          	ld	a1,24(a0)
    80006454:	02053603          	ld	a2,32(a0)
    80006458:	0005b683          	ld	a3,0(a1)
    8000645c:	00c686b3          	add	a3,a3,a2
    80006460:	00d5b023          	sd	a3,0(a1)
    80006464:	00200593          	li	a1,2
    80006468:	14459073          	csrw	sip,a1
    8000646c:	01053683          	ld	a3,16(a0)
    80006470:	00853603          	ld	a2,8(a0)
    80006474:	00053583          	ld	a1,0(a0)
    80006478:	34051573          	csrrw	a0,mscratch,a0
    8000647c:	30200073          	mret

0000000080006480 <plicinit>:
    80006480:	ff010113          	addi	sp,sp,-16
    80006484:	00813423          	sd	s0,8(sp)
    80006488:	01010413          	addi	s0,sp,16
    8000648c:	00813403          	ld	s0,8(sp)
    80006490:	0c0007b7          	lui	a5,0xc000
    80006494:	00100713          	li	a4,1
    80006498:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000649c:	00e7a223          	sw	a4,4(a5)
    800064a0:	01010113          	addi	sp,sp,16
    800064a4:	00008067          	ret

00000000800064a8 <plicinithart>:
    800064a8:	ff010113          	addi	sp,sp,-16
    800064ac:	00813023          	sd	s0,0(sp)
    800064b0:	00113423          	sd	ra,8(sp)
    800064b4:	01010413          	addi	s0,sp,16
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	a40080e7          	jalr	-1472(ra) # 80005ef8 <cpuid>
    800064c0:	0085171b          	slliw	a4,a0,0x8
    800064c4:	0c0027b7          	lui	a5,0xc002
    800064c8:	00e787b3          	add	a5,a5,a4
    800064cc:	40200713          	li	a4,1026
    800064d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800064d4:	00813083          	ld	ra,8(sp)
    800064d8:	00013403          	ld	s0,0(sp)
    800064dc:	00d5151b          	slliw	a0,a0,0xd
    800064e0:	0c2017b7          	lui	a5,0xc201
    800064e4:	00a78533          	add	a0,a5,a0
    800064e8:	00052023          	sw	zero,0(a0)
    800064ec:	01010113          	addi	sp,sp,16
    800064f0:	00008067          	ret

00000000800064f4 <plic_claim>:
    800064f4:	ff010113          	addi	sp,sp,-16
    800064f8:	00813023          	sd	s0,0(sp)
    800064fc:	00113423          	sd	ra,8(sp)
    80006500:	01010413          	addi	s0,sp,16
    80006504:	00000097          	auipc	ra,0x0
    80006508:	9f4080e7          	jalr	-1548(ra) # 80005ef8 <cpuid>
    8000650c:	00813083          	ld	ra,8(sp)
    80006510:	00013403          	ld	s0,0(sp)
    80006514:	00d5151b          	slliw	a0,a0,0xd
    80006518:	0c2017b7          	lui	a5,0xc201
    8000651c:	00a78533          	add	a0,a5,a0
    80006520:	00452503          	lw	a0,4(a0)
    80006524:	01010113          	addi	sp,sp,16
    80006528:	00008067          	ret

000000008000652c <plic_complete>:
    8000652c:	fe010113          	addi	sp,sp,-32
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	00113c23          	sd	ra,24(sp)
    8000653c:	02010413          	addi	s0,sp,32
    80006540:	00050493          	mv	s1,a0
    80006544:	00000097          	auipc	ra,0x0
    80006548:	9b4080e7          	jalr	-1612(ra) # 80005ef8 <cpuid>
    8000654c:	01813083          	ld	ra,24(sp)
    80006550:	01013403          	ld	s0,16(sp)
    80006554:	00d5179b          	slliw	a5,a0,0xd
    80006558:	0c201737          	lui	a4,0xc201
    8000655c:	00f707b3          	add	a5,a4,a5
    80006560:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret

0000000080006570 <consolewrite>:
    80006570:	fb010113          	addi	sp,sp,-80
    80006574:	04813023          	sd	s0,64(sp)
    80006578:	04113423          	sd	ra,72(sp)
    8000657c:	02913c23          	sd	s1,56(sp)
    80006580:	03213823          	sd	s2,48(sp)
    80006584:	03313423          	sd	s3,40(sp)
    80006588:	03413023          	sd	s4,32(sp)
    8000658c:	01513c23          	sd	s5,24(sp)
    80006590:	05010413          	addi	s0,sp,80
    80006594:	06c05c63          	blez	a2,8000660c <consolewrite+0x9c>
    80006598:	00060993          	mv	s3,a2
    8000659c:	00050a13          	mv	s4,a0
    800065a0:	00058493          	mv	s1,a1
    800065a4:	00000913          	li	s2,0
    800065a8:	fff00a93          	li	s5,-1
    800065ac:	01c0006f          	j	800065c8 <consolewrite+0x58>
    800065b0:	fbf44503          	lbu	a0,-65(s0)
    800065b4:	0019091b          	addiw	s2,s2,1
    800065b8:	00148493          	addi	s1,s1,1
    800065bc:	00001097          	auipc	ra,0x1
    800065c0:	a9c080e7          	jalr	-1380(ra) # 80007058 <uartputc>
    800065c4:	03298063          	beq	s3,s2,800065e4 <consolewrite+0x74>
    800065c8:	00048613          	mv	a2,s1
    800065cc:	00100693          	li	a3,1
    800065d0:	000a0593          	mv	a1,s4
    800065d4:	fbf40513          	addi	a0,s0,-65
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	9d8080e7          	jalr	-1576(ra) # 80005fb0 <either_copyin>
    800065e0:	fd5518e3          	bne	a0,s5,800065b0 <consolewrite+0x40>
    800065e4:	04813083          	ld	ra,72(sp)
    800065e8:	04013403          	ld	s0,64(sp)
    800065ec:	03813483          	ld	s1,56(sp)
    800065f0:	02813983          	ld	s3,40(sp)
    800065f4:	02013a03          	ld	s4,32(sp)
    800065f8:	01813a83          	ld	s5,24(sp)
    800065fc:	00090513          	mv	a0,s2
    80006600:	03013903          	ld	s2,48(sp)
    80006604:	05010113          	addi	sp,sp,80
    80006608:	00008067          	ret
    8000660c:	00000913          	li	s2,0
    80006610:	fd5ff06f          	j	800065e4 <consolewrite+0x74>

0000000080006614 <consoleread>:
    80006614:	f9010113          	addi	sp,sp,-112
    80006618:	06813023          	sd	s0,96(sp)
    8000661c:	04913c23          	sd	s1,88(sp)
    80006620:	05213823          	sd	s2,80(sp)
    80006624:	05313423          	sd	s3,72(sp)
    80006628:	05413023          	sd	s4,64(sp)
    8000662c:	03513c23          	sd	s5,56(sp)
    80006630:	03613823          	sd	s6,48(sp)
    80006634:	03713423          	sd	s7,40(sp)
    80006638:	03813023          	sd	s8,32(sp)
    8000663c:	06113423          	sd	ra,104(sp)
    80006640:	01913c23          	sd	s9,24(sp)
    80006644:	07010413          	addi	s0,sp,112
    80006648:	00060b93          	mv	s7,a2
    8000664c:	00050913          	mv	s2,a0
    80006650:	00058c13          	mv	s8,a1
    80006654:	00060b1b          	sext.w	s6,a2
    80006658:	00005497          	auipc	s1,0x5
    8000665c:	a3048493          	addi	s1,s1,-1488 # 8000b088 <cons>
    80006660:	00400993          	li	s3,4
    80006664:	fff00a13          	li	s4,-1
    80006668:	00a00a93          	li	s5,10
    8000666c:	05705e63          	blez	s7,800066c8 <consoleread+0xb4>
    80006670:	09c4a703          	lw	a4,156(s1)
    80006674:	0984a783          	lw	a5,152(s1)
    80006678:	0007071b          	sext.w	a4,a4
    8000667c:	08e78463          	beq	a5,a4,80006704 <consoleread+0xf0>
    80006680:	07f7f713          	andi	a4,a5,127
    80006684:	00e48733          	add	a4,s1,a4
    80006688:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000668c:	0017869b          	addiw	a3,a5,1
    80006690:	08d4ac23          	sw	a3,152(s1)
    80006694:	00070c9b          	sext.w	s9,a4
    80006698:	0b370663          	beq	a4,s3,80006744 <consoleread+0x130>
    8000669c:	00100693          	li	a3,1
    800066a0:	f9f40613          	addi	a2,s0,-97
    800066a4:	000c0593          	mv	a1,s8
    800066a8:	00090513          	mv	a0,s2
    800066ac:	f8e40fa3          	sb	a4,-97(s0)
    800066b0:	00000097          	auipc	ra,0x0
    800066b4:	8b4080e7          	jalr	-1868(ra) # 80005f64 <either_copyout>
    800066b8:	01450863          	beq	a0,s4,800066c8 <consoleread+0xb4>
    800066bc:	001c0c13          	addi	s8,s8,1
    800066c0:	fffb8b9b          	addiw	s7,s7,-1
    800066c4:	fb5c94e3          	bne	s9,s5,8000666c <consoleread+0x58>
    800066c8:	000b851b          	sext.w	a0,s7
    800066cc:	06813083          	ld	ra,104(sp)
    800066d0:	06013403          	ld	s0,96(sp)
    800066d4:	05813483          	ld	s1,88(sp)
    800066d8:	05013903          	ld	s2,80(sp)
    800066dc:	04813983          	ld	s3,72(sp)
    800066e0:	04013a03          	ld	s4,64(sp)
    800066e4:	03813a83          	ld	s5,56(sp)
    800066e8:	02813b83          	ld	s7,40(sp)
    800066ec:	02013c03          	ld	s8,32(sp)
    800066f0:	01813c83          	ld	s9,24(sp)
    800066f4:	40ab053b          	subw	a0,s6,a0
    800066f8:	03013b03          	ld	s6,48(sp)
    800066fc:	07010113          	addi	sp,sp,112
    80006700:	00008067          	ret
    80006704:	00001097          	auipc	ra,0x1
    80006708:	1d8080e7          	jalr	472(ra) # 800078dc <push_on>
    8000670c:	0984a703          	lw	a4,152(s1)
    80006710:	09c4a783          	lw	a5,156(s1)
    80006714:	0007879b          	sext.w	a5,a5
    80006718:	fef70ce3          	beq	a4,a5,80006710 <consoleread+0xfc>
    8000671c:	00001097          	auipc	ra,0x1
    80006720:	234080e7          	jalr	564(ra) # 80007950 <pop_on>
    80006724:	0984a783          	lw	a5,152(s1)
    80006728:	07f7f713          	andi	a4,a5,127
    8000672c:	00e48733          	add	a4,s1,a4
    80006730:	01874703          	lbu	a4,24(a4)
    80006734:	0017869b          	addiw	a3,a5,1
    80006738:	08d4ac23          	sw	a3,152(s1)
    8000673c:	00070c9b          	sext.w	s9,a4
    80006740:	f5371ee3          	bne	a4,s3,8000669c <consoleread+0x88>
    80006744:	000b851b          	sext.w	a0,s7
    80006748:	f96bf2e3          	bgeu	s7,s6,800066cc <consoleread+0xb8>
    8000674c:	08f4ac23          	sw	a5,152(s1)
    80006750:	f7dff06f          	j	800066cc <consoleread+0xb8>

0000000080006754 <consputc>:
    80006754:	10000793          	li	a5,256
    80006758:	00f50663          	beq	a0,a5,80006764 <consputc+0x10>
    8000675c:	00001317          	auipc	t1,0x1
    80006760:	9f430067          	jr	-1548(t1) # 80007150 <uartputc_sync>
    80006764:	ff010113          	addi	sp,sp,-16
    80006768:	00113423          	sd	ra,8(sp)
    8000676c:	00813023          	sd	s0,0(sp)
    80006770:	01010413          	addi	s0,sp,16
    80006774:	00800513          	li	a0,8
    80006778:	00001097          	auipc	ra,0x1
    8000677c:	9d8080e7          	jalr	-1576(ra) # 80007150 <uartputc_sync>
    80006780:	02000513          	li	a0,32
    80006784:	00001097          	auipc	ra,0x1
    80006788:	9cc080e7          	jalr	-1588(ra) # 80007150 <uartputc_sync>
    8000678c:	00013403          	ld	s0,0(sp)
    80006790:	00813083          	ld	ra,8(sp)
    80006794:	00800513          	li	a0,8
    80006798:	01010113          	addi	sp,sp,16
    8000679c:	00001317          	auipc	t1,0x1
    800067a0:	9b430067          	jr	-1612(t1) # 80007150 <uartputc_sync>

00000000800067a4 <consoleintr>:
    800067a4:	fe010113          	addi	sp,sp,-32
    800067a8:	00813823          	sd	s0,16(sp)
    800067ac:	00913423          	sd	s1,8(sp)
    800067b0:	01213023          	sd	s2,0(sp)
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	02010413          	addi	s0,sp,32
    800067bc:	00005917          	auipc	s2,0x5
    800067c0:	8cc90913          	addi	s2,s2,-1844 # 8000b088 <cons>
    800067c4:	00050493          	mv	s1,a0
    800067c8:	00090513          	mv	a0,s2
    800067cc:	00001097          	auipc	ra,0x1
    800067d0:	e40080e7          	jalr	-448(ra) # 8000760c <acquire>
    800067d4:	02048c63          	beqz	s1,8000680c <consoleintr+0x68>
    800067d8:	0a092783          	lw	a5,160(s2)
    800067dc:	09892703          	lw	a4,152(s2)
    800067e0:	07f00693          	li	a3,127
    800067e4:	40e7873b          	subw	a4,a5,a4
    800067e8:	02e6e263          	bltu	a3,a4,8000680c <consoleintr+0x68>
    800067ec:	00d00713          	li	a4,13
    800067f0:	04e48063          	beq	s1,a4,80006830 <consoleintr+0x8c>
    800067f4:	07f7f713          	andi	a4,a5,127
    800067f8:	00e90733          	add	a4,s2,a4
    800067fc:	0017879b          	addiw	a5,a5,1
    80006800:	0af92023          	sw	a5,160(s2)
    80006804:	00970c23          	sb	s1,24(a4)
    80006808:	08f92e23          	sw	a5,156(s2)
    8000680c:	01013403          	ld	s0,16(sp)
    80006810:	01813083          	ld	ra,24(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	00013903          	ld	s2,0(sp)
    8000681c:	00005517          	auipc	a0,0x5
    80006820:	86c50513          	addi	a0,a0,-1940 # 8000b088 <cons>
    80006824:	02010113          	addi	sp,sp,32
    80006828:	00001317          	auipc	t1,0x1
    8000682c:	eb030067          	jr	-336(t1) # 800076d8 <release>
    80006830:	00a00493          	li	s1,10
    80006834:	fc1ff06f          	j	800067f4 <consoleintr+0x50>

0000000080006838 <consoleinit>:
    80006838:	fe010113          	addi	sp,sp,-32
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	00813823          	sd	s0,16(sp)
    80006844:	00913423          	sd	s1,8(sp)
    80006848:	02010413          	addi	s0,sp,32
    8000684c:	00005497          	auipc	s1,0x5
    80006850:	83c48493          	addi	s1,s1,-1988 # 8000b088 <cons>
    80006854:	00048513          	mv	a0,s1
    80006858:	00002597          	auipc	a1,0x2
    8000685c:	bb058593          	addi	a1,a1,-1104 # 80008408 <_ZZ12printIntRadimE6digits+0x238>
    80006860:	00001097          	auipc	ra,0x1
    80006864:	d88080e7          	jalr	-632(ra) # 800075e8 <initlock>
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	7ac080e7          	jalr	1964(ra) # 80007014 <uartinit>
    80006870:	01813083          	ld	ra,24(sp)
    80006874:	01013403          	ld	s0,16(sp)
    80006878:	00000797          	auipc	a5,0x0
    8000687c:	d9c78793          	addi	a5,a5,-612 # 80006614 <consoleread>
    80006880:	0af4bc23          	sd	a5,184(s1)
    80006884:	00000797          	auipc	a5,0x0
    80006888:	cec78793          	addi	a5,a5,-788 # 80006570 <consolewrite>
    8000688c:	0cf4b023          	sd	a5,192(s1)
    80006890:	00813483          	ld	s1,8(sp)
    80006894:	02010113          	addi	sp,sp,32
    80006898:	00008067          	ret

000000008000689c <console_read>:
    8000689c:	ff010113          	addi	sp,sp,-16
    800068a0:	00813423          	sd	s0,8(sp)
    800068a4:	01010413          	addi	s0,sp,16
    800068a8:	00813403          	ld	s0,8(sp)
    800068ac:	00005317          	auipc	t1,0x5
    800068b0:	89433303          	ld	t1,-1900(t1) # 8000b140 <devsw+0x10>
    800068b4:	01010113          	addi	sp,sp,16
    800068b8:	00030067          	jr	t1

00000000800068bc <console_write>:
    800068bc:	ff010113          	addi	sp,sp,-16
    800068c0:	00813423          	sd	s0,8(sp)
    800068c4:	01010413          	addi	s0,sp,16
    800068c8:	00813403          	ld	s0,8(sp)
    800068cc:	00005317          	auipc	t1,0x5
    800068d0:	87c33303          	ld	t1,-1924(t1) # 8000b148 <devsw+0x18>
    800068d4:	01010113          	addi	sp,sp,16
    800068d8:	00030067          	jr	t1

00000000800068dc <panic>:
    800068dc:	fe010113          	addi	sp,sp,-32
    800068e0:	00113c23          	sd	ra,24(sp)
    800068e4:	00813823          	sd	s0,16(sp)
    800068e8:	00913423          	sd	s1,8(sp)
    800068ec:	02010413          	addi	s0,sp,32
    800068f0:	00050493          	mv	s1,a0
    800068f4:	00002517          	auipc	a0,0x2
    800068f8:	b1c50513          	addi	a0,a0,-1252 # 80008410 <_ZZ12printIntRadimE6digits+0x240>
    800068fc:	00005797          	auipc	a5,0x5
    80006900:	8e07a623          	sw	zero,-1812(a5) # 8000b1e8 <pr+0x18>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	034080e7          	jalr	52(ra) # 80006938 <__printf>
    8000690c:	00048513          	mv	a0,s1
    80006910:	00000097          	auipc	ra,0x0
    80006914:	028080e7          	jalr	40(ra) # 80006938 <__printf>
    80006918:	00002517          	auipc	a0,0x2
    8000691c:	91850513          	addi	a0,a0,-1768 # 80008230 <_ZZ12printIntRadimE6digits+0x60>
    80006920:	00000097          	auipc	ra,0x0
    80006924:	018080e7          	jalr	24(ra) # 80006938 <__printf>
    80006928:	00100793          	li	a5,1
    8000692c:	00003717          	auipc	a4,0x3
    80006930:	5cf72e23          	sw	a5,1500(a4) # 80009f08 <panicked>
    80006934:	0000006f          	j	80006934 <panic+0x58>

0000000080006938 <__printf>:
    80006938:	f3010113          	addi	sp,sp,-208
    8000693c:	08813023          	sd	s0,128(sp)
    80006940:	07313423          	sd	s3,104(sp)
    80006944:	09010413          	addi	s0,sp,144
    80006948:	05813023          	sd	s8,64(sp)
    8000694c:	08113423          	sd	ra,136(sp)
    80006950:	06913c23          	sd	s1,120(sp)
    80006954:	07213823          	sd	s2,112(sp)
    80006958:	07413023          	sd	s4,96(sp)
    8000695c:	05513c23          	sd	s5,88(sp)
    80006960:	05613823          	sd	s6,80(sp)
    80006964:	05713423          	sd	s7,72(sp)
    80006968:	03913c23          	sd	s9,56(sp)
    8000696c:	03a13823          	sd	s10,48(sp)
    80006970:	03b13423          	sd	s11,40(sp)
    80006974:	00005317          	auipc	t1,0x5
    80006978:	85c30313          	addi	t1,t1,-1956 # 8000b1d0 <pr>
    8000697c:	01832c03          	lw	s8,24(t1)
    80006980:	00b43423          	sd	a1,8(s0)
    80006984:	00c43823          	sd	a2,16(s0)
    80006988:	00d43c23          	sd	a3,24(s0)
    8000698c:	02e43023          	sd	a4,32(s0)
    80006990:	02f43423          	sd	a5,40(s0)
    80006994:	03043823          	sd	a6,48(s0)
    80006998:	03143c23          	sd	a7,56(s0)
    8000699c:	00050993          	mv	s3,a0
    800069a0:	4a0c1663          	bnez	s8,80006e4c <__printf+0x514>
    800069a4:	60098c63          	beqz	s3,80006fbc <__printf+0x684>
    800069a8:	0009c503          	lbu	a0,0(s3)
    800069ac:	00840793          	addi	a5,s0,8
    800069b0:	f6f43c23          	sd	a5,-136(s0)
    800069b4:	00000493          	li	s1,0
    800069b8:	22050063          	beqz	a0,80006bd8 <__printf+0x2a0>
    800069bc:	00002a37          	lui	s4,0x2
    800069c0:	00018ab7          	lui	s5,0x18
    800069c4:	000f4b37          	lui	s6,0xf4
    800069c8:	00989bb7          	lui	s7,0x989
    800069cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800069d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800069d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800069d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800069dc:	00148c9b          	addiw	s9,s1,1
    800069e0:	02500793          	li	a5,37
    800069e4:	01998933          	add	s2,s3,s9
    800069e8:	38f51263          	bne	a0,a5,80006d6c <__printf+0x434>
    800069ec:	00094783          	lbu	a5,0(s2)
    800069f0:	00078c9b          	sext.w	s9,a5
    800069f4:	1e078263          	beqz	a5,80006bd8 <__printf+0x2a0>
    800069f8:	0024849b          	addiw	s1,s1,2
    800069fc:	07000713          	li	a4,112
    80006a00:	00998933          	add	s2,s3,s1
    80006a04:	38e78a63          	beq	a5,a4,80006d98 <__printf+0x460>
    80006a08:	20f76863          	bltu	a4,a5,80006c18 <__printf+0x2e0>
    80006a0c:	42a78863          	beq	a5,a0,80006e3c <__printf+0x504>
    80006a10:	06400713          	li	a4,100
    80006a14:	40e79663          	bne	a5,a4,80006e20 <__printf+0x4e8>
    80006a18:	f7843783          	ld	a5,-136(s0)
    80006a1c:	0007a603          	lw	a2,0(a5)
    80006a20:	00878793          	addi	a5,a5,8
    80006a24:	f6f43c23          	sd	a5,-136(s0)
    80006a28:	42064a63          	bltz	a2,80006e5c <__printf+0x524>
    80006a2c:	00a00713          	li	a4,10
    80006a30:	02e677bb          	remuw	a5,a2,a4
    80006a34:	00002d97          	auipc	s11,0x2
    80006a38:	a04d8d93          	addi	s11,s11,-1532 # 80008438 <digits>
    80006a3c:	00900593          	li	a1,9
    80006a40:	0006051b          	sext.w	a0,a2
    80006a44:	00000c93          	li	s9,0
    80006a48:	02079793          	slli	a5,a5,0x20
    80006a4c:	0207d793          	srli	a5,a5,0x20
    80006a50:	00fd87b3          	add	a5,s11,a5
    80006a54:	0007c783          	lbu	a5,0(a5)
    80006a58:	02e656bb          	divuw	a3,a2,a4
    80006a5c:	f8f40023          	sb	a5,-128(s0)
    80006a60:	14c5d863          	bge	a1,a2,80006bb0 <__printf+0x278>
    80006a64:	06300593          	li	a1,99
    80006a68:	00100c93          	li	s9,1
    80006a6c:	02e6f7bb          	remuw	a5,a3,a4
    80006a70:	02079793          	slli	a5,a5,0x20
    80006a74:	0207d793          	srli	a5,a5,0x20
    80006a78:	00fd87b3          	add	a5,s11,a5
    80006a7c:	0007c783          	lbu	a5,0(a5)
    80006a80:	02e6d73b          	divuw	a4,a3,a4
    80006a84:	f8f400a3          	sb	a5,-127(s0)
    80006a88:	12a5f463          	bgeu	a1,a0,80006bb0 <__printf+0x278>
    80006a8c:	00a00693          	li	a3,10
    80006a90:	00900593          	li	a1,9
    80006a94:	02d777bb          	remuw	a5,a4,a3
    80006a98:	02079793          	slli	a5,a5,0x20
    80006a9c:	0207d793          	srli	a5,a5,0x20
    80006aa0:	00fd87b3          	add	a5,s11,a5
    80006aa4:	0007c503          	lbu	a0,0(a5)
    80006aa8:	02d757bb          	divuw	a5,a4,a3
    80006aac:	f8a40123          	sb	a0,-126(s0)
    80006ab0:	48e5f263          	bgeu	a1,a4,80006f34 <__printf+0x5fc>
    80006ab4:	06300513          	li	a0,99
    80006ab8:	02d7f5bb          	remuw	a1,a5,a3
    80006abc:	02059593          	slli	a1,a1,0x20
    80006ac0:	0205d593          	srli	a1,a1,0x20
    80006ac4:	00bd85b3          	add	a1,s11,a1
    80006ac8:	0005c583          	lbu	a1,0(a1)
    80006acc:	02d7d7bb          	divuw	a5,a5,a3
    80006ad0:	f8b401a3          	sb	a1,-125(s0)
    80006ad4:	48e57263          	bgeu	a0,a4,80006f58 <__printf+0x620>
    80006ad8:	3e700513          	li	a0,999
    80006adc:	02d7f5bb          	remuw	a1,a5,a3
    80006ae0:	02059593          	slli	a1,a1,0x20
    80006ae4:	0205d593          	srli	a1,a1,0x20
    80006ae8:	00bd85b3          	add	a1,s11,a1
    80006aec:	0005c583          	lbu	a1,0(a1)
    80006af0:	02d7d7bb          	divuw	a5,a5,a3
    80006af4:	f8b40223          	sb	a1,-124(s0)
    80006af8:	46e57663          	bgeu	a0,a4,80006f64 <__printf+0x62c>
    80006afc:	02d7f5bb          	remuw	a1,a5,a3
    80006b00:	02059593          	slli	a1,a1,0x20
    80006b04:	0205d593          	srli	a1,a1,0x20
    80006b08:	00bd85b3          	add	a1,s11,a1
    80006b0c:	0005c583          	lbu	a1,0(a1)
    80006b10:	02d7d7bb          	divuw	a5,a5,a3
    80006b14:	f8b402a3          	sb	a1,-123(s0)
    80006b18:	46ea7863          	bgeu	s4,a4,80006f88 <__printf+0x650>
    80006b1c:	02d7f5bb          	remuw	a1,a5,a3
    80006b20:	02059593          	slli	a1,a1,0x20
    80006b24:	0205d593          	srli	a1,a1,0x20
    80006b28:	00bd85b3          	add	a1,s11,a1
    80006b2c:	0005c583          	lbu	a1,0(a1)
    80006b30:	02d7d7bb          	divuw	a5,a5,a3
    80006b34:	f8b40323          	sb	a1,-122(s0)
    80006b38:	3eeaf863          	bgeu	s5,a4,80006f28 <__printf+0x5f0>
    80006b3c:	02d7f5bb          	remuw	a1,a5,a3
    80006b40:	02059593          	slli	a1,a1,0x20
    80006b44:	0205d593          	srli	a1,a1,0x20
    80006b48:	00bd85b3          	add	a1,s11,a1
    80006b4c:	0005c583          	lbu	a1,0(a1)
    80006b50:	02d7d7bb          	divuw	a5,a5,a3
    80006b54:	f8b403a3          	sb	a1,-121(s0)
    80006b58:	42eb7e63          	bgeu	s6,a4,80006f94 <__printf+0x65c>
    80006b5c:	02d7f5bb          	remuw	a1,a5,a3
    80006b60:	02059593          	slli	a1,a1,0x20
    80006b64:	0205d593          	srli	a1,a1,0x20
    80006b68:	00bd85b3          	add	a1,s11,a1
    80006b6c:	0005c583          	lbu	a1,0(a1)
    80006b70:	02d7d7bb          	divuw	a5,a5,a3
    80006b74:	f8b40423          	sb	a1,-120(s0)
    80006b78:	42ebfc63          	bgeu	s7,a4,80006fb0 <__printf+0x678>
    80006b7c:	02079793          	slli	a5,a5,0x20
    80006b80:	0207d793          	srli	a5,a5,0x20
    80006b84:	00fd8db3          	add	s11,s11,a5
    80006b88:	000dc703          	lbu	a4,0(s11)
    80006b8c:	00a00793          	li	a5,10
    80006b90:	00900c93          	li	s9,9
    80006b94:	f8e404a3          	sb	a4,-119(s0)
    80006b98:	00065c63          	bgez	a2,80006bb0 <__printf+0x278>
    80006b9c:	f9040713          	addi	a4,s0,-112
    80006ba0:	00f70733          	add	a4,a4,a5
    80006ba4:	02d00693          	li	a3,45
    80006ba8:	fed70823          	sb	a3,-16(a4)
    80006bac:	00078c93          	mv	s9,a5
    80006bb0:	f8040793          	addi	a5,s0,-128
    80006bb4:	01978cb3          	add	s9,a5,s9
    80006bb8:	f7f40d13          	addi	s10,s0,-129
    80006bbc:	000cc503          	lbu	a0,0(s9)
    80006bc0:	fffc8c93          	addi	s9,s9,-1
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	b90080e7          	jalr	-1136(ra) # 80006754 <consputc>
    80006bcc:	ffac98e3          	bne	s9,s10,80006bbc <__printf+0x284>
    80006bd0:	00094503          	lbu	a0,0(s2)
    80006bd4:	e00514e3          	bnez	a0,800069dc <__printf+0xa4>
    80006bd8:	1a0c1663          	bnez	s8,80006d84 <__printf+0x44c>
    80006bdc:	08813083          	ld	ra,136(sp)
    80006be0:	08013403          	ld	s0,128(sp)
    80006be4:	07813483          	ld	s1,120(sp)
    80006be8:	07013903          	ld	s2,112(sp)
    80006bec:	06813983          	ld	s3,104(sp)
    80006bf0:	06013a03          	ld	s4,96(sp)
    80006bf4:	05813a83          	ld	s5,88(sp)
    80006bf8:	05013b03          	ld	s6,80(sp)
    80006bfc:	04813b83          	ld	s7,72(sp)
    80006c00:	04013c03          	ld	s8,64(sp)
    80006c04:	03813c83          	ld	s9,56(sp)
    80006c08:	03013d03          	ld	s10,48(sp)
    80006c0c:	02813d83          	ld	s11,40(sp)
    80006c10:	0d010113          	addi	sp,sp,208
    80006c14:	00008067          	ret
    80006c18:	07300713          	li	a4,115
    80006c1c:	1ce78a63          	beq	a5,a4,80006df0 <__printf+0x4b8>
    80006c20:	07800713          	li	a4,120
    80006c24:	1ee79e63          	bne	a5,a4,80006e20 <__printf+0x4e8>
    80006c28:	f7843783          	ld	a5,-136(s0)
    80006c2c:	0007a703          	lw	a4,0(a5)
    80006c30:	00878793          	addi	a5,a5,8
    80006c34:	f6f43c23          	sd	a5,-136(s0)
    80006c38:	28074263          	bltz	a4,80006ebc <__printf+0x584>
    80006c3c:	00001d97          	auipc	s11,0x1
    80006c40:	7fcd8d93          	addi	s11,s11,2044 # 80008438 <digits>
    80006c44:	00f77793          	andi	a5,a4,15
    80006c48:	00fd87b3          	add	a5,s11,a5
    80006c4c:	0007c683          	lbu	a3,0(a5)
    80006c50:	00f00613          	li	a2,15
    80006c54:	0007079b          	sext.w	a5,a4
    80006c58:	f8d40023          	sb	a3,-128(s0)
    80006c5c:	0047559b          	srliw	a1,a4,0x4
    80006c60:	0047569b          	srliw	a3,a4,0x4
    80006c64:	00000c93          	li	s9,0
    80006c68:	0ee65063          	bge	a2,a4,80006d48 <__printf+0x410>
    80006c6c:	00f6f693          	andi	a3,a3,15
    80006c70:	00dd86b3          	add	a3,s11,a3
    80006c74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006c78:	0087d79b          	srliw	a5,a5,0x8
    80006c7c:	00100c93          	li	s9,1
    80006c80:	f8d400a3          	sb	a3,-127(s0)
    80006c84:	0cb67263          	bgeu	a2,a1,80006d48 <__printf+0x410>
    80006c88:	00f7f693          	andi	a3,a5,15
    80006c8c:	00dd86b3          	add	a3,s11,a3
    80006c90:	0006c583          	lbu	a1,0(a3)
    80006c94:	00f00613          	li	a2,15
    80006c98:	0047d69b          	srliw	a3,a5,0x4
    80006c9c:	f8b40123          	sb	a1,-126(s0)
    80006ca0:	0047d593          	srli	a1,a5,0x4
    80006ca4:	28f67e63          	bgeu	a2,a5,80006f40 <__printf+0x608>
    80006ca8:	00f6f693          	andi	a3,a3,15
    80006cac:	00dd86b3          	add	a3,s11,a3
    80006cb0:	0006c503          	lbu	a0,0(a3)
    80006cb4:	0087d813          	srli	a6,a5,0x8
    80006cb8:	0087d69b          	srliw	a3,a5,0x8
    80006cbc:	f8a401a3          	sb	a0,-125(s0)
    80006cc0:	28b67663          	bgeu	a2,a1,80006f4c <__printf+0x614>
    80006cc4:	00f6f693          	andi	a3,a3,15
    80006cc8:	00dd86b3          	add	a3,s11,a3
    80006ccc:	0006c583          	lbu	a1,0(a3)
    80006cd0:	00c7d513          	srli	a0,a5,0xc
    80006cd4:	00c7d69b          	srliw	a3,a5,0xc
    80006cd8:	f8b40223          	sb	a1,-124(s0)
    80006cdc:	29067a63          	bgeu	a2,a6,80006f70 <__printf+0x638>
    80006ce0:	00f6f693          	andi	a3,a3,15
    80006ce4:	00dd86b3          	add	a3,s11,a3
    80006ce8:	0006c583          	lbu	a1,0(a3)
    80006cec:	0107d813          	srli	a6,a5,0x10
    80006cf0:	0107d69b          	srliw	a3,a5,0x10
    80006cf4:	f8b402a3          	sb	a1,-123(s0)
    80006cf8:	28a67263          	bgeu	a2,a0,80006f7c <__printf+0x644>
    80006cfc:	00f6f693          	andi	a3,a3,15
    80006d00:	00dd86b3          	add	a3,s11,a3
    80006d04:	0006c683          	lbu	a3,0(a3)
    80006d08:	0147d79b          	srliw	a5,a5,0x14
    80006d0c:	f8d40323          	sb	a3,-122(s0)
    80006d10:	21067663          	bgeu	a2,a6,80006f1c <__printf+0x5e4>
    80006d14:	02079793          	slli	a5,a5,0x20
    80006d18:	0207d793          	srli	a5,a5,0x20
    80006d1c:	00fd8db3          	add	s11,s11,a5
    80006d20:	000dc683          	lbu	a3,0(s11)
    80006d24:	00800793          	li	a5,8
    80006d28:	00700c93          	li	s9,7
    80006d2c:	f8d403a3          	sb	a3,-121(s0)
    80006d30:	00075c63          	bgez	a4,80006d48 <__printf+0x410>
    80006d34:	f9040713          	addi	a4,s0,-112
    80006d38:	00f70733          	add	a4,a4,a5
    80006d3c:	02d00693          	li	a3,45
    80006d40:	fed70823          	sb	a3,-16(a4)
    80006d44:	00078c93          	mv	s9,a5
    80006d48:	f8040793          	addi	a5,s0,-128
    80006d4c:	01978cb3          	add	s9,a5,s9
    80006d50:	f7f40d13          	addi	s10,s0,-129
    80006d54:	000cc503          	lbu	a0,0(s9)
    80006d58:	fffc8c93          	addi	s9,s9,-1
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	9f8080e7          	jalr	-1544(ra) # 80006754 <consputc>
    80006d64:	ff9d18e3          	bne	s10,s9,80006d54 <__printf+0x41c>
    80006d68:	0100006f          	j	80006d78 <__printf+0x440>
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	9e8080e7          	jalr	-1560(ra) # 80006754 <consputc>
    80006d74:	000c8493          	mv	s1,s9
    80006d78:	00094503          	lbu	a0,0(s2)
    80006d7c:	c60510e3          	bnez	a0,800069dc <__printf+0xa4>
    80006d80:	e40c0ee3          	beqz	s8,80006bdc <__printf+0x2a4>
    80006d84:	00004517          	auipc	a0,0x4
    80006d88:	44c50513          	addi	a0,a0,1100 # 8000b1d0 <pr>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	94c080e7          	jalr	-1716(ra) # 800076d8 <release>
    80006d94:	e49ff06f          	j	80006bdc <__printf+0x2a4>
    80006d98:	f7843783          	ld	a5,-136(s0)
    80006d9c:	03000513          	li	a0,48
    80006da0:	01000d13          	li	s10,16
    80006da4:	00878713          	addi	a4,a5,8
    80006da8:	0007bc83          	ld	s9,0(a5)
    80006dac:	f6e43c23          	sd	a4,-136(s0)
    80006db0:	00000097          	auipc	ra,0x0
    80006db4:	9a4080e7          	jalr	-1628(ra) # 80006754 <consputc>
    80006db8:	07800513          	li	a0,120
    80006dbc:	00000097          	auipc	ra,0x0
    80006dc0:	998080e7          	jalr	-1640(ra) # 80006754 <consputc>
    80006dc4:	00001d97          	auipc	s11,0x1
    80006dc8:	674d8d93          	addi	s11,s11,1652 # 80008438 <digits>
    80006dcc:	03ccd793          	srli	a5,s9,0x3c
    80006dd0:	00fd87b3          	add	a5,s11,a5
    80006dd4:	0007c503          	lbu	a0,0(a5)
    80006dd8:	fffd0d1b          	addiw	s10,s10,-1
    80006ddc:	004c9c93          	slli	s9,s9,0x4
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	974080e7          	jalr	-1676(ra) # 80006754 <consputc>
    80006de8:	fe0d12e3          	bnez	s10,80006dcc <__printf+0x494>
    80006dec:	f8dff06f          	j	80006d78 <__printf+0x440>
    80006df0:	f7843783          	ld	a5,-136(s0)
    80006df4:	0007bc83          	ld	s9,0(a5)
    80006df8:	00878793          	addi	a5,a5,8
    80006dfc:	f6f43c23          	sd	a5,-136(s0)
    80006e00:	000c9a63          	bnez	s9,80006e14 <__printf+0x4dc>
    80006e04:	1080006f          	j	80006f0c <__printf+0x5d4>
    80006e08:	001c8c93          	addi	s9,s9,1
    80006e0c:	00000097          	auipc	ra,0x0
    80006e10:	948080e7          	jalr	-1720(ra) # 80006754 <consputc>
    80006e14:	000cc503          	lbu	a0,0(s9)
    80006e18:	fe0518e3          	bnez	a0,80006e08 <__printf+0x4d0>
    80006e1c:	f5dff06f          	j	80006d78 <__printf+0x440>
    80006e20:	02500513          	li	a0,37
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	930080e7          	jalr	-1744(ra) # 80006754 <consputc>
    80006e2c:	000c8513          	mv	a0,s9
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	924080e7          	jalr	-1756(ra) # 80006754 <consputc>
    80006e38:	f41ff06f          	j	80006d78 <__printf+0x440>
    80006e3c:	02500513          	li	a0,37
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	914080e7          	jalr	-1772(ra) # 80006754 <consputc>
    80006e48:	f31ff06f          	j	80006d78 <__printf+0x440>
    80006e4c:	00030513          	mv	a0,t1
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	7bc080e7          	jalr	1980(ra) # 8000760c <acquire>
    80006e58:	b4dff06f          	j	800069a4 <__printf+0x6c>
    80006e5c:	40c0053b          	negw	a0,a2
    80006e60:	00a00713          	li	a4,10
    80006e64:	02e576bb          	remuw	a3,a0,a4
    80006e68:	00001d97          	auipc	s11,0x1
    80006e6c:	5d0d8d93          	addi	s11,s11,1488 # 80008438 <digits>
    80006e70:	ff700593          	li	a1,-9
    80006e74:	02069693          	slli	a3,a3,0x20
    80006e78:	0206d693          	srli	a3,a3,0x20
    80006e7c:	00dd86b3          	add	a3,s11,a3
    80006e80:	0006c683          	lbu	a3,0(a3)
    80006e84:	02e557bb          	divuw	a5,a0,a4
    80006e88:	f8d40023          	sb	a3,-128(s0)
    80006e8c:	10b65e63          	bge	a2,a1,80006fa8 <__printf+0x670>
    80006e90:	06300593          	li	a1,99
    80006e94:	02e7f6bb          	remuw	a3,a5,a4
    80006e98:	02069693          	slli	a3,a3,0x20
    80006e9c:	0206d693          	srli	a3,a3,0x20
    80006ea0:	00dd86b3          	add	a3,s11,a3
    80006ea4:	0006c683          	lbu	a3,0(a3)
    80006ea8:	02e7d73b          	divuw	a4,a5,a4
    80006eac:	00200793          	li	a5,2
    80006eb0:	f8d400a3          	sb	a3,-127(s0)
    80006eb4:	bca5ece3          	bltu	a1,a0,80006a8c <__printf+0x154>
    80006eb8:	ce5ff06f          	j	80006b9c <__printf+0x264>
    80006ebc:	40e007bb          	negw	a5,a4
    80006ec0:	00001d97          	auipc	s11,0x1
    80006ec4:	578d8d93          	addi	s11,s11,1400 # 80008438 <digits>
    80006ec8:	00f7f693          	andi	a3,a5,15
    80006ecc:	00dd86b3          	add	a3,s11,a3
    80006ed0:	0006c583          	lbu	a1,0(a3)
    80006ed4:	ff100613          	li	a2,-15
    80006ed8:	0047d69b          	srliw	a3,a5,0x4
    80006edc:	f8b40023          	sb	a1,-128(s0)
    80006ee0:	0047d59b          	srliw	a1,a5,0x4
    80006ee4:	0ac75e63          	bge	a4,a2,80006fa0 <__printf+0x668>
    80006ee8:	00f6f693          	andi	a3,a3,15
    80006eec:	00dd86b3          	add	a3,s11,a3
    80006ef0:	0006c603          	lbu	a2,0(a3)
    80006ef4:	00f00693          	li	a3,15
    80006ef8:	0087d79b          	srliw	a5,a5,0x8
    80006efc:	f8c400a3          	sb	a2,-127(s0)
    80006f00:	d8b6e4e3          	bltu	a3,a1,80006c88 <__printf+0x350>
    80006f04:	00200793          	li	a5,2
    80006f08:	e2dff06f          	j	80006d34 <__printf+0x3fc>
    80006f0c:	00001c97          	auipc	s9,0x1
    80006f10:	50cc8c93          	addi	s9,s9,1292 # 80008418 <_ZZ12printIntRadimE6digits+0x248>
    80006f14:	02800513          	li	a0,40
    80006f18:	ef1ff06f          	j	80006e08 <__printf+0x4d0>
    80006f1c:	00700793          	li	a5,7
    80006f20:	00600c93          	li	s9,6
    80006f24:	e0dff06f          	j	80006d30 <__printf+0x3f8>
    80006f28:	00700793          	li	a5,7
    80006f2c:	00600c93          	li	s9,6
    80006f30:	c69ff06f          	j	80006b98 <__printf+0x260>
    80006f34:	00300793          	li	a5,3
    80006f38:	00200c93          	li	s9,2
    80006f3c:	c5dff06f          	j	80006b98 <__printf+0x260>
    80006f40:	00300793          	li	a5,3
    80006f44:	00200c93          	li	s9,2
    80006f48:	de9ff06f          	j	80006d30 <__printf+0x3f8>
    80006f4c:	00400793          	li	a5,4
    80006f50:	00300c93          	li	s9,3
    80006f54:	dddff06f          	j	80006d30 <__printf+0x3f8>
    80006f58:	00400793          	li	a5,4
    80006f5c:	00300c93          	li	s9,3
    80006f60:	c39ff06f          	j	80006b98 <__printf+0x260>
    80006f64:	00500793          	li	a5,5
    80006f68:	00400c93          	li	s9,4
    80006f6c:	c2dff06f          	j	80006b98 <__printf+0x260>
    80006f70:	00500793          	li	a5,5
    80006f74:	00400c93          	li	s9,4
    80006f78:	db9ff06f          	j	80006d30 <__printf+0x3f8>
    80006f7c:	00600793          	li	a5,6
    80006f80:	00500c93          	li	s9,5
    80006f84:	dadff06f          	j	80006d30 <__printf+0x3f8>
    80006f88:	00600793          	li	a5,6
    80006f8c:	00500c93          	li	s9,5
    80006f90:	c09ff06f          	j	80006b98 <__printf+0x260>
    80006f94:	00800793          	li	a5,8
    80006f98:	00700c93          	li	s9,7
    80006f9c:	bfdff06f          	j	80006b98 <__printf+0x260>
    80006fa0:	00100793          	li	a5,1
    80006fa4:	d91ff06f          	j	80006d34 <__printf+0x3fc>
    80006fa8:	00100793          	li	a5,1
    80006fac:	bf1ff06f          	j	80006b9c <__printf+0x264>
    80006fb0:	00900793          	li	a5,9
    80006fb4:	00800c93          	li	s9,8
    80006fb8:	be1ff06f          	j	80006b98 <__printf+0x260>
    80006fbc:	00001517          	auipc	a0,0x1
    80006fc0:	46450513          	addi	a0,a0,1124 # 80008420 <_ZZ12printIntRadimE6digits+0x250>
    80006fc4:	00000097          	auipc	ra,0x0
    80006fc8:	918080e7          	jalr	-1768(ra) # 800068dc <panic>

0000000080006fcc <printfinit>:
    80006fcc:	fe010113          	addi	sp,sp,-32
    80006fd0:	00813823          	sd	s0,16(sp)
    80006fd4:	00913423          	sd	s1,8(sp)
    80006fd8:	00113c23          	sd	ra,24(sp)
    80006fdc:	02010413          	addi	s0,sp,32
    80006fe0:	00004497          	auipc	s1,0x4
    80006fe4:	1f048493          	addi	s1,s1,496 # 8000b1d0 <pr>
    80006fe8:	00048513          	mv	a0,s1
    80006fec:	00001597          	auipc	a1,0x1
    80006ff0:	44458593          	addi	a1,a1,1092 # 80008430 <_ZZ12printIntRadimE6digits+0x260>
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	5f4080e7          	jalr	1524(ra) # 800075e8 <initlock>
    80006ffc:	01813083          	ld	ra,24(sp)
    80007000:	01013403          	ld	s0,16(sp)
    80007004:	0004ac23          	sw	zero,24(s1)
    80007008:	00813483          	ld	s1,8(sp)
    8000700c:	02010113          	addi	sp,sp,32
    80007010:	00008067          	ret

0000000080007014 <uartinit>:
    80007014:	ff010113          	addi	sp,sp,-16
    80007018:	00813423          	sd	s0,8(sp)
    8000701c:	01010413          	addi	s0,sp,16
    80007020:	100007b7          	lui	a5,0x10000
    80007024:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007028:	f8000713          	li	a4,-128
    8000702c:	00e781a3          	sb	a4,3(a5)
    80007030:	00300713          	li	a4,3
    80007034:	00e78023          	sb	a4,0(a5)
    80007038:	000780a3          	sb	zero,1(a5)
    8000703c:	00e781a3          	sb	a4,3(a5)
    80007040:	00700693          	li	a3,7
    80007044:	00d78123          	sb	a3,2(a5)
    80007048:	00e780a3          	sb	a4,1(a5)
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <uartputc>:
    80007058:	00003797          	auipc	a5,0x3
    8000705c:	eb07a783          	lw	a5,-336(a5) # 80009f08 <panicked>
    80007060:	00078463          	beqz	a5,80007068 <uartputc+0x10>
    80007064:	0000006f          	j	80007064 <uartputc+0xc>
    80007068:	fd010113          	addi	sp,sp,-48
    8000706c:	02813023          	sd	s0,32(sp)
    80007070:	00913c23          	sd	s1,24(sp)
    80007074:	01213823          	sd	s2,16(sp)
    80007078:	01313423          	sd	s3,8(sp)
    8000707c:	02113423          	sd	ra,40(sp)
    80007080:	03010413          	addi	s0,sp,48
    80007084:	00003917          	auipc	s2,0x3
    80007088:	e8c90913          	addi	s2,s2,-372 # 80009f10 <uart_tx_r>
    8000708c:	00093783          	ld	a5,0(s2)
    80007090:	00003497          	auipc	s1,0x3
    80007094:	e8848493          	addi	s1,s1,-376 # 80009f18 <uart_tx_w>
    80007098:	0004b703          	ld	a4,0(s1)
    8000709c:	02078693          	addi	a3,a5,32
    800070a0:	00050993          	mv	s3,a0
    800070a4:	02e69c63          	bne	a3,a4,800070dc <uartputc+0x84>
    800070a8:	00001097          	auipc	ra,0x1
    800070ac:	834080e7          	jalr	-1996(ra) # 800078dc <push_on>
    800070b0:	00093783          	ld	a5,0(s2)
    800070b4:	0004b703          	ld	a4,0(s1)
    800070b8:	02078793          	addi	a5,a5,32
    800070bc:	00e79463          	bne	a5,a4,800070c4 <uartputc+0x6c>
    800070c0:	0000006f          	j	800070c0 <uartputc+0x68>
    800070c4:	00001097          	auipc	ra,0x1
    800070c8:	88c080e7          	jalr	-1908(ra) # 80007950 <pop_on>
    800070cc:	00093783          	ld	a5,0(s2)
    800070d0:	0004b703          	ld	a4,0(s1)
    800070d4:	02078693          	addi	a3,a5,32
    800070d8:	fce688e3          	beq	a3,a4,800070a8 <uartputc+0x50>
    800070dc:	01f77693          	andi	a3,a4,31
    800070e0:	00004597          	auipc	a1,0x4
    800070e4:	11058593          	addi	a1,a1,272 # 8000b1f0 <uart_tx_buf>
    800070e8:	00d586b3          	add	a3,a1,a3
    800070ec:	00170713          	addi	a4,a4,1
    800070f0:	01368023          	sb	s3,0(a3)
    800070f4:	00e4b023          	sd	a4,0(s1)
    800070f8:	10000637          	lui	a2,0x10000
    800070fc:	02f71063          	bne	a4,a5,8000711c <uartputc+0xc4>
    80007100:	0340006f          	j	80007134 <uartputc+0xdc>
    80007104:	00074703          	lbu	a4,0(a4)
    80007108:	00f93023          	sd	a5,0(s2)
    8000710c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007110:	00093783          	ld	a5,0(s2)
    80007114:	0004b703          	ld	a4,0(s1)
    80007118:	00f70e63          	beq	a4,a5,80007134 <uartputc+0xdc>
    8000711c:	00564683          	lbu	a3,5(a2)
    80007120:	01f7f713          	andi	a4,a5,31
    80007124:	00e58733          	add	a4,a1,a4
    80007128:	0206f693          	andi	a3,a3,32
    8000712c:	00178793          	addi	a5,a5,1
    80007130:	fc069ae3          	bnez	a3,80007104 <uartputc+0xac>
    80007134:	02813083          	ld	ra,40(sp)
    80007138:	02013403          	ld	s0,32(sp)
    8000713c:	01813483          	ld	s1,24(sp)
    80007140:	01013903          	ld	s2,16(sp)
    80007144:	00813983          	ld	s3,8(sp)
    80007148:	03010113          	addi	sp,sp,48
    8000714c:	00008067          	ret

0000000080007150 <uartputc_sync>:
    80007150:	ff010113          	addi	sp,sp,-16
    80007154:	00813423          	sd	s0,8(sp)
    80007158:	01010413          	addi	s0,sp,16
    8000715c:	00003717          	auipc	a4,0x3
    80007160:	dac72703          	lw	a4,-596(a4) # 80009f08 <panicked>
    80007164:	02071663          	bnez	a4,80007190 <uartputc_sync+0x40>
    80007168:	00050793          	mv	a5,a0
    8000716c:	100006b7          	lui	a3,0x10000
    80007170:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007174:	02077713          	andi	a4,a4,32
    80007178:	fe070ce3          	beqz	a4,80007170 <uartputc_sync+0x20>
    8000717c:	0ff7f793          	andi	a5,a5,255
    80007180:	00f68023          	sb	a5,0(a3)
    80007184:	00813403          	ld	s0,8(sp)
    80007188:	01010113          	addi	sp,sp,16
    8000718c:	00008067          	ret
    80007190:	0000006f          	j	80007190 <uartputc_sync+0x40>

0000000080007194 <uartstart>:
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00813423          	sd	s0,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	00003617          	auipc	a2,0x3
    800071a4:	d7060613          	addi	a2,a2,-656 # 80009f10 <uart_tx_r>
    800071a8:	00003517          	auipc	a0,0x3
    800071ac:	d7050513          	addi	a0,a0,-656 # 80009f18 <uart_tx_w>
    800071b0:	00063783          	ld	a5,0(a2)
    800071b4:	00053703          	ld	a4,0(a0)
    800071b8:	04f70263          	beq	a4,a5,800071fc <uartstart+0x68>
    800071bc:	100005b7          	lui	a1,0x10000
    800071c0:	00004817          	auipc	a6,0x4
    800071c4:	03080813          	addi	a6,a6,48 # 8000b1f0 <uart_tx_buf>
    800071c8:	01c0006f          	j	800071e4 <uartstart+0x50>
    800071cc:	0006c703          	lbu	a4,0(a3)
    800071d0:	00f63023          	sd	a5,0(a2)
    800071d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071d8:	00063783          	ld	a5,0(a2)
    800071dc:	00053703          	ld	a4,0(a0)
    800071e0:	00f70e63          	beq	a4,a5,800071fc <uartstart+0x68>
    800071e4:	01f7f713          	andi	a4,a5,31
    800071e8:	00e806b3          	add	a3,a6,a4
    800071ec:	0055c703          	lbu	a4,5(a1)
    800071f0:	00178793          	addi	a5,a5,1
    800071f4:	02077713          	andi	a4,a4,32
    800071f8:	fc071ae3          	bnez	a4,800071cc <uartstart+0x38>
    800071fc:	00813403          	ld	s0,8(sp)
    80007200:	01010113          	addi	sp,sp,16
    80007204:	00008067          	ret

0000000080007208 <uartgetc>:
    80007208:	ff010113          	addi	sp,sp,-16
    8000720c:	00813423          	sd	s0,8(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	10000737          	lui	a4,0x10000
    80007218:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000721c:	0017f793          	andi	a5,a5,1
    80007220:	00078c63          	beqz	a5,80007238 <uartgetc+0x30>
    80007224:	00074503          	lbu	a0,0(a4)
    80007228:	0ff57513          	andi	a0,a0,255
    8000722c:	00813403          	ld	s0,8(sp)
    80007230:	01010113          	addi	sp,sp,16
    80007234:	00008067          	ret
    80007238:	fff00513          	li	a0,-1
    8000723c:	ff1ff06f          	j	8000722c <uartgetc+0x24>

0000000080007240 <uartintr>:
    80007240:	100007b7          	lui	a5,0x10000
    80007244:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007248:	0017f793          	andi	a5,a5,1
    8000724c:	0a078463          	beqz	a5,800072f4 <uartintr+0xb4>
    80007250:	fe010113          	addi	sp,sp,-32
    80007254:	00813823          	sd	s0,16(sp)
    80007258:	00913423          	sd	s1,8(sp)
    8000725c:	00113c23          	sd	ra,24(sp)
    80007260:	02010413          	addi	s0,sp,32
    80007264:	100004b7          	lui	s1,0x10000
    80007268:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000726c:	0ff57513          	andi	a0,a0,255
    80007270:	fffff097          	auipc	ra,0xfffff
    80007274:	534080e7          	jalr	1332(ra) # 800067a4 <consoleintr>
    80007278:	0054c783          	lbu	a5,5(s1)
    8000727c:	0017f793          	andi	a5,a5,1
    80007280:	fe0794e3          	bnez	a5,80007268 <uartintr+0x28>
    80007284:	00003617          	auipc	a2,0x3
    80007288:	c8c60613          	addi	a2,a2,-884 # 80009f10 <uart_tx_r>
    8000728c:	00003517          	auipc	a0,0x3
    80007290:	c8c50513          	addi	a0,a0,-884 # 80009f18 <uart_tx_w>
    80007294:	00063783          	ld	a5,0(a2)
    80007298:	00053703          	ld	a4,0(a0)
    8000729c:	04f70263          	beq	a4,a5,800072e0 <uartintr+0xa0>
    800072a0:	100005b7          	lui	a1,0x10000
    800072a4:	00004817          	auipc	a6,0x4
    800072a8:	f4c80813          	addi	a6,a6,-180 # 8000b1f0 <uart_tx_buf>
    800072ac:	01c0006f          	j	800072c8 <uartintr+0x88>
    800072b0:	0006c703          	lbu	a4,0(a3)
    800072b4:	00f63023          	sd	a5,0(a2)
    800072b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072bc:	00063783          	ld	a5,0(a2)
    800072c0:	00053703          	ld	a4,0(a0)
    800072c4:	00f70e63          	beq	a4,a5,800072e0 <uartintr+0xa0>
    800072c8:	01f7f713          	andi	a4,a5,31
    800072cc:	00e806b3          	add	a3,a6,a4
    800072d0:	0055c703          	lbu	a4,5(a1)
    800072d4:	00178793          	addi	a5,a5,1
    800072d8:	02077713          	andi	a4,a4,32
    800072dc:	fc071ae3          	bnez	a4,800072b0 <uartintr+0x70>
    800072e0:	01813083          	ld	ra,24(sp)
    800072e4:	01013403          	ld	s0,16(sp)
    800072e8:	00813483          	ld	s1,8(sp)
    800072ec:	02010113          	addi	sp,sp,32
    800072f0:	00008067          	ret
    800072f4:	00003617          	auipc	a2,0x3
    800072f8:	c1c60613          	addi	a2,a2,-996 # 80009f10 <uart_tx_r>
    800072fc:	00003517          	auipc	a0,0x3
    80007300:	c1c50513          	addi	a0,a0,-996 # 80009f18 <uart_tx_w>
    80007304:	00063783          	ld	a5,0(a2)
    80007308:	00053703          	ld	a4,0(a0)
    8000730c:	04f70263          	beq	a4,a5,80007350 <uartintr+0x110>
    80007310:	100005b7          	lui	a1,0x10000
    80007314:	00004817          	auipc	a6,0x4
    80007318:	edc80813          	addi	a6,a6,-292 # 8000b1f0 <uart_tx_buf>
    8000731c:	01c0006f          	j	80007338 <uartintr+0xf8>
    80007320:	0006c703          	lbu	a4,0(a3)
    80007324:	00f63023          	sd	a5,0(a2)
    80007328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000732c:	00063783          	ld	a5,0(a2)
    80007330:	00053703          	ld	a4,0(a0)
    80007334:	02f70063          	beq	a4,a5,80007354 <uartintr+0x114>
    80007338:	01f7f713          	andi	a4,a5,31
    8000733c:	00e806b3          	add	a3,a6,a4
    80007340:	0055c703          	lbu	a4,5(a1)
    80007344:	00178793          	addi	a5,a5,1
    80007348:	02077713          	andi	a4,a4,32
    8000734c:	fc071ae3          	bnez	a4,80007320 <uartintr+0xe0>
    80007350:	00008067          	ret
    80007354:	00008067          	ret

0000000080007358 <kinit>:
    80007358:	fc010113          	addi	sp,sp,-64
    8000735c:	02913423          	sd	s1,40(sp)
    80007360:	fffff7b7          	lui	a5,0xfffff
    80007364:	00005497          	auipc	s1,0x5
    80007368:	eab48493          	addi	s1,s1,-341 # 8000c20f <end+0xfff>
    8000736c:	02813823          	sd	s0,48(sp)
    80007370:	01313c23          	sd	s3,24(sp)
    80007374:	00f4f4b3          	and	s1,s1,a5
    80007378:	02113c23          	sd	ra,56(sp)
    8000737c:	03213023          	sd	s2,32(sp)
    80007380:	01413823          	sd	s4,16(sp)
    80007384:	01513423          	sd	s5,8(sp)
    80007388:	04010413          	addi	s0,sp,64
    8000738c:	000017b7          	lui	a5,0x1
    80007390:	01100993          	li	s3,17
    80007394:	00f487b3          	add	a5,s1,a5
    80007398:	01b99993          	slli	s3,s3,0x1b
    8000739c:	06f9e063          	bltu	s3,a5,800073fc <kinit+0xa4>
    800073a0:	00004a97          	auipc	s5,0x4
    800073a4:	e70a8a93          	addi	s5,s5,-400 # 8000b210 <end>
    800073a8:	0754ec63          	bltu	s1,s5,80007420 <kinit+0xc8>
    800073ac:	0734fa63          	bgeu	s1,s3,80007420 <kinit+0xc8>
    800073b0:	00088a37          	lui	s4,0x88
    800073b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800073b8:	00003917          	auipc	s2,0x3
    800073bc:	b6890913          	addi	s2,s2,-1176 # 80009f20 <kmem>
    800073c0:	00ca1a13          	slli	s4,s4,0xc
    800073c4:	0140006f          	j	800073d8 <kinit+0x80>
    800073c8:	000017b7          	lui	a5,0x1
    800073cc:	00f484b3          	add	s1,s1,a5
    800073d0:	0554e863          	bltu	s1,s5,80007420 <kinit+0xc8>
    800073d4:	0534f663          	bgeu	s1,s3,80007420 <kinit+0xc8>
    800073d8:	00001637          	lui	a2,0x1
    800073dc:	00100593          	li	a1,1
    800073e0:	00048513          	mv	a0,s1
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	5e4080e7          	jalr	1508(ra) # 800079c8 <__memset>
    800073ec:	00093783          	ld	a5,0(s2)
    800073f0:	00f4b023          	sd	a5,0(s1)
    800073f4:	00993023          	sd	s1,0(s2)
    800073f8:	fd4498e3          	bne	s1,s4,800073c8 <kinit+0x70>
    800073fc:	03813083          	ld	ra,56(sp)
    80007400:	03013403          	ld	s0,48(sp)
    80007404:	02813483          	ld	s1,40(sp)
    80007408:	02013903          	ld	s2,32(sp)
    8000740c:	01813983          	ld	s3,24(sp)
    80007410:	01013a03          	ld	s4,16(sp)
    80007414:	00813a83          	ld	s5,8(sp)
    80007418:	04010113          	addi	sp,sp,64
    8000741c:	00008067          	ret
    80007420:	00001517          	auipc	a0,0x1
    80007424:	03050513          	addi	a0,a0,48 # 80008450 <digits+0x18>
    80007428:	fffff097          	auipc	ra,0xfffff
    8000742c:	4b4080e7          	jalr	1204(ra) # 800068dc <panic>

0000000080007430 <freerange>:
    80007430:	fc010113          	addi	sp,sp,-64
    80007434:	000017b7          	lui	a5,0x1
    80007438:	02913423          	sd	s1,40(sp)
    8000743c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007440:	009504b3          	add	s1,a0,s1
    80007444:	fffff537          	lui	a0,0xfffff
    80007448:	02813823          	sd	s0,48(sp)
    8000744c:	02113c23          	sd	ra,56(sp)
    80007450:	03213023          	sd	s2,32(sp)
    80007454:	01313c23          	sd	s3,24(sp)
    80007458:	01413823          	sd	s4,16(sp)
    8000745c:	01513423          	sd	s5,8(sp)
    80007460:	01613023          	sd	s6,0(sp)
    80007464:	04010413          	addi	s0,sp,64
    80007468:	00a4f4b3          	and	s1,s1,a0
    8000746c:	00f487b3          	add	a5,s1,a5
    80007470:	06f5e463          	bltu	a1,a5,800074d8 <freerange+0xa8>
    80007474:	00004a97          	auipc	s5,0x4
    80007478:	d9ca8a93          	addi	s5,s5,-612 # 8000b210 <end>
    8000747c:	0954e263          	bltu	s1,s5,80007500 <freerange+0xd0>
    80007480:	01100993          	li	s3,17
    80007484:	01b99993          	slli	s3,s3,0x1b
    80007488:	0734fc63          	bgeu	s1,s3,80007500 <freerange+0xd0>
    8000748c:	00058a13          	mv	s4,a1
    80007490:	00003917          	auipc	s2,0x3
    80007494:	a9090913          	addi	s2,s2,-1392 # 80009f20 <kmem>
    80007498:	00002b37          	lui	s6,0x2
    8000749c:	0140006f          	j	800074b0 <freerange+0x80>
    800074a0:	000017b7          	lui	a5,0x1
    800074a4:	00f484b3          	add	s1,s1,a5
    800074a8:	0554ec63          	bltu	s1,s5,80007500 <freerange+0xd0>
    800074ac:	0534fa63          	bgeu	s1,s3,80007500 <freerange+0xd0>
    800074b0:	00001637          	lui	a2,0x1
    800074b4:	00100593          	li	a1,1
    800074b8:	00048513          	mv	a0,s1
    800074bc:	00000097          	auipc	ra,0x0
    800074c0:	50c080e7          	jalr	1292(ra) # 800079c8 <__memset>
    800074c4:	00093703          	ld	a4,0(s2)
    800074c8:	016487b3          	add	a5,s1,s6
    800074cc:	00e4b023          	sd	a4,0(s1)
    800074d0:	00993023          	sd	s1,0(s2)
    800074d4:	fcfa76e3          	bgeu	s4,a5,800074a0 <freerange+0x70>
    800074d8:	03813083          	ld	ra,56(sp)
    800074dc:	03013403          	ld	s0,48(sp)
    800074e0:	02813483          	ld	s1,40(sp)
    800074e4:	02013903          	ld	s2,32(sp)
    800074e8:	01813983          	ld	s3,24(sp)
    800074ec:	01013a03          	ld	s4,16(sp)
    800074f0:	00813a83          	ld	s5,8(sp)
    800074f4:	00013b03          	ld	s6,0(sp)
    800074f8:	04010113          	addi	sp,sp,64
    800074fc:	00008067          	ret
    80007500:	00001517          	auipc	a0,0x1
    80007504:	f5050513          	addi	a0,a0,-176 # 80008450 <digits+0x18>
    80007508:	fffff097          	auipc	ra,0xfffff
    8000750c:	3d4080e7          	jalr	980(ra) # 800068dc <panic>

0000000080007510 <kfree>:
    80007510:	fe010113          	addi	sp,sp,-32
    80007514:	00813823          	sd	s0,16(sp)
    80007518:	00113c23          	sd	ra,24(sp)
    8000751c:	00913423          	sd	s1,8(sp)
    80007520:	02010413          	addi	s0,sp,32
    80007524:	03451793          	slli	a5,a0,0x34
    80007528:	04079c63          	bnez	a5,80007580 <kfree+0x70>
    8000752c:	00004797          	auipc	a5,0x4
    80007530:	ce478793          	addi	a5,a5,-796 # 8000b210 <end>
    80007534:	00050493          	mv	s1,a0
    80007538:	04f56463          	bltu	a0,a5,80007580 <kfree+0x70>
    8000753c:	01100793          	li	a5,17
    80007540:	01b79793          	slli	a5,a5,0x1b
    80007544:	02f57e63          	bgeu	a0,a5,80007580 <kfree+0x70>
    80007548:	00001637          	lui	a2,0x1
    8000754c:	00100593          	li	a1,1
    80007550:	00000097          	auipc	ra,0x0
    80007554:	478080e7          	jalr	1144(ra) # 800079c8 <__memset>
    80007558:	00003797          	auipc	a5,0x3
    8000755c:	9c878793          	addi	a5,a5,-1592 # 80009f20 <kmem>
    80007560:	0007b703          	ld	a4,0(a5)
    80007564:	01813083          	ld	ra,24(sp)
    80007568:	01013403          	ld	s0,16(sp)
    8000756c:	00e4b023          	sd	a4,0(s1)
    80007570:	0097b023          	sd	s1,0(a5)
    80007574:	00813483          	ld	s1,8(sp)
    80007578:	02010113          	addi	sp,sp,32
    8000757c:	00008067          	ret
    80007580:	00001517          	auipc	a0,0x1
    80007584:	ed050513          	addi	a0,a0,-304 # 80008450 <digits+0x18>
    80007588:	fffff097          	auipc	ra,0xfffff
    8000758c:	354080e7          	jalr	852(ra) # 800068dc <panic>

0000000080007590 <kalloc>:
    80007590:	fe010113          	addi	sp,sp,-32
    80007594:	00813823          	sd	s0,16(sp)
    80007598:	00913423          	sd	s1,8(sp)
    8000759c:	00113c23          	sd	ra,24(sp)
    800075a0:	02010413          	addi	s0,sp,32
    800075a4:	00003797          	auipc	a5,0x3
    800075a8:	97c78793          	addi	a5,a5,-1668 # 80009f20 <kmem>
    800075ac:	0007b483          	ld	s1,0(a5)
    800075b0:	02048063          	beqz	s1,800075d0 <kalloc+0x40>
    800075b4:	0004b703          	ld	a4,0(s1)
    800075b8:	00001637          	lui	a2,0x1
    800075bc:	00500593          	li	a1,5
    800075c0:	00048513          	mv	a0,s1
    800075c4:	00e7b023          	sd	a4,0(a5)
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	400080e7          	jalr	1024(ra) # 800079c8 <__memset>
    800075d0:	01813083          	ld	ra,24(sp)
    800075d4:	01013403          	ld	s0,16(sp)
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00813483          	ld	s1,8(sp)
    800075e0:	02010113          	addi	sp,sp,32
    800075e4:	00008067          	ret

00000000800075e8 <initlock>:
    800075e8:	ff010113          	addi	sp,sp,-16
    800075ec:	00813423          	sd	s0,8(sp)
    800075f0:	01010413          	addi	s0,sp,16
    800075f4:	00813403          	ld	s0,8(sp)
    800075f8:	00b53423          	sd	a1,8(a0)
    800075fc:	00052023          	sw	zero,0(a0)
    80007600:	00053823          	sd	zero,16(a0)
    80007604:	01010113          	addi	sp,sp,16
    80007608:	00008067          	ret

000000008000760c <acquire>:
    8000760c:	fe010113          	addi	sp,sp,-32
    80007610:	00813823          	sd	s0,16(sp)
    80007614:	00913423          	sd	s1,8(sp)
    80007618:	00113c23          	sd	ra,24(sp)
    8000761c:	01213023          	sd	s2,0(sp)
    80007620:	02010413          	addi	s0,sp,32
    80007624:	00050493          	mv	s1,a0
    80007628:	10002973          	csrr	s2,sstatus
    8000762c:	100027f3          	csrr	a5,sstatus
    80007630:	ffd7f793          	andi	a5,a5,-3
    80007634:	10079073          	csrw	sstatus,a5
    80007638:	fffff097          	auipc	ra,0xfffff
    8000763c:	8e0080e7          	jalr	-1824(ra) # 80005f18 <mycpu>
    80007640:	07852783          	lw	a5,120(a0)
    80007644:	06078e63          	beqz	a5,800076c0 <acquire+0xb4>
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	8d0080e7          	jalr	-1840(ra) # 80005f18 <mycpu>
    80007650:	07852783          	lw	a5,120(a0)
    80007654:	0004a703          	lw	a4,0(s1)
    80007658:	0017879b          	addiw	a5,a5,1
    8000765c:	06f52c23          	sw	a5,120(a0)
    80007660:	04071063          	bnez	a4,800076a0 <acquire+0x94>
    80007664:	00100713          	li	a4,1
    80007668:	00070793          	mv	a5,a4
    8000766c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007670:	0007879b          	sext.w	a5,a5
    80007674:	fe079ae3          	bnez	a5,80007668 <acquire+0x5c>
    80007678:	0ff0000f          	fence
    8000767c:	fffff097          	auipc	ra,0xfffff
    80007680:	89c080e7          	jalr	-1892(ra) # 80005f18 <mycpu>
    80007684:	01813083          	ld	ra,24(sp)
    80007688:	01013403          	ld	s0,16(sp)
    8000768c:	00a4b823          	sd	a0,16(s1)
    80007690:	00013903          	ld	s2,0(sp)
    80007694:	00813483          	ld	s1,8(sp)
    80007698:	02010113          	addi	sp,sp,32
    8000769c:	00008067          	ret
    800076a0:	0104b903          	ld	s2,16(s1)
    800076a4:	fffff097          	auipc	ra,0xfffff
    800076a8:	874080e7          	jalr	-1932(ra) # 80005f18 <mycpu>
    800076ac:	faa91ce3          	bne	s2,a0,80007664 <acquire+0x58>
    800076b0:	00001517          	auipc	a0,0x1
    800076b4:	da850513          	addi	a0,a0,-600 # 80008458 <digits+0x20>
    800076b8:	fffff097          	auipc	ra,0xfffff
    800076bc:	224080e7          	jalr	548(ra) # 800068dc <panic>
    800076c0:	00195913          	srli	s2,s2,0x1
    800076c4:	fffff097          	auipc	ra,0xfffff
    800076c8:	854080e7          	jalr	-1964(ra) # 80005f18 <mycpu>
    800076cc:	00197913          	andi	s2,s2,1
    800076d0:	07252e23          	sw	s2,124(a0)
    800076d4:	f75ff06f          	j	80007648 <acquire+0x3c>

00000000800076d8 <release>:
    800076d8:	fe010113          	addi	sp,sp,-32
    800076dc:	00813823          	sd	s0,16(sp)
    800076e0:	00113c23          	sd	ra,24(sp)
    800076e4:	00913423          	sd	s1,8(sp)
    800076e8:	01213023          	sd	s2,0(sp)
    800076ec:	02010413          	addi	s0,sp,32
    800076f0:	00052783          	lw	a5,0(a0)
    800076f4:	00079a63          	bnez	a5,80007708 <release+0x30>
    800076f8:	00001517          	auipc	a0,0x1
    800076fc:	d6850513          	addi	a0,a0,-664 # 80008460 <digits+0x28>
    80007700:	fffff097          	auipc	ra,0xfffff
    80007704:	1dc080e7          	jalr	476(ra) # 800068dc <panic>
    80007708:	01053903          	ld	s2,16(a0)
    8000770c:	00050493          	mv	s1,a0
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	808080e7          	jalr	-2040(ra) # 80005f18 <mycpu>
    80007718:	fea910e3          	bne	s2,a0,800076f8 <release+0x20>
    8000771c:	0004b823          	sd	zero,16(s1)
    80007720:	0ff0000f          	fence
    80007724:	0f50000f          	fence	iorw,ow
    80007728:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000772c:	ffffe097          	auipc	ra,0xffffe
    80007730:	7ec080e7          	jalr	2028(ra) # 80005f18 <mycpu>
    80007734:	100027f3          	csrr	a5,sstatus
    80007738:	0027f793          	andi	a5,a5,2
    8000773c:	04079a63          	bnez	a5,80007790 <release+0xb8>
    80007740:	07852783          	lw	a5,120(a0)
    80007744:	02f05e63          	blez	a5,80007780 <release+0xa8>
    80007748:	fff7871b          	addiw	a4,a5,-1
    8000774c:	06e52c23          	sw	a4,120(a0)
    80007750:	00071c63          	bnez	a4,80007768 <release+0x90>
    80007754:	07c52783          	lw	a5,124(a0)
    80007758:	00078863          	beqz	a5,80007768 <release+0x90>
    8000775c:	100027f3          	csrr	a5,sstatus
    80007760:	0027e793          	ori	a5,a5,2
    80007764:	10079073          	csrw	sstatus,a5
    80007768:	01813083          	ld	ra,24(sp)
    8000776c:	01013403          	ld	s0,16(sp)
    80007770:	00813483          	ld	s1,8(sp)
    80007774:	00013903          	ld	s2,0(sp)
    80007778:	02010113          	addi	sp,sp,32
    8000777c:	00008067          	ret
    80007780:	00001517          	auipc	a0,0x1
    80007784:	d0050513          	addi	a0,a0,-768 # 80008480 <digits+0x48>
    80007788:	fffff097          	auipc	ra,0xfffff
    8000778c:	154080e7          	jalr	340(ra) # 800068dc <panic>
    80007790:	00001517          	auipc	a0,0x1
    80007794:	cd850513          	addi	a0,a0,-808 # 80008468 <digits+0x30>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	144080e7          	jalr	324(ra) # 800068dc <panic>

00000000800077a0 <holding>:
    800077a0:	00052783          	lw	a5,0(a0)
    800077a4:	00079663          	bnez	a5,800077b0 <holding+0x10>
    800077a8:	00000513          	li	a0,0
    800077ac:	00008067          	ret
    800077b0:	fe010113          	addi	sp,sp,-32
    800077b4:	00813823          	sd	s0,16(sp)
    800077b8:	00913423          	sd	s1,8(sp)
    800077bc:	00113c23          	sd	ra,24(sp)
    800077c0:	02010413          	addi	s0,sp,32
    800077c4:	01053483          	ld	s1,16(a0)
    800077c8:	ffffe097          	auipc	ra,0xffffe
    800077cc:	750080e7          	jalr	1872(ra) # 80005f18 <mycpu>
    800077d0:	01813083          	ld	ra,24(sp)
    800077d4:	01013403          	ld	s0,16(sp)
    800077d8:	40a48533          	sub	a0,s1,a0
    800077dc:	00153513          	seqz	a0,a0
    800077e0:	00813483          	ld	s1,8(sp)
    800077e4:	02010113          	addi	sp,sp,32
    800077e8:	00008067          	ret

00000000800077ec <push_off>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00113c23          	sd	ra,24(sp)
    800077f8:	00913423          	sd	s1,8(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	100024f3          	csrr	s1,sstatus
    80007804:	100027f3          	csrr	a5,sstatus
    80007808:	ffd7f793          	andi	a5,a5,-3
    8000780c:	10079073          	csrw	sstatus,a5
    80007810:	ffffe097          	auipc	ra,0xffffe
    80007814:	708080e7          	jalr	1800(ra) # 80005f18 <mycpu>
    80007818:	07852783          	lw	a5,120(a0)
    8000781c:	02078663          	beqz	a5,80007848 <push_off+0x5c>
    80007820:	ffffe097          	auipc	ra,0xffffe
    80007824:	6f8080e7          	jalr	1784(ra) # 80005f18 <mycpu>
    80007828:	07852783          	lw	a5,120(a0)
    8000782c:	01813083          	ld	ra,24(sp)
    80007830:	01013403          	ld	s0,16(sp)
    80007834:	0017879b          	addiw	a5,a5,1
    80007838:	06f52c23          	sw	a5,120(a0)
    8000783c:	00813483          	ld	s1,8(sp)
    80007840:	02010113          	addi	sp,sp,32
    80007844:	00008067          	ret
    80007848:	0014d493          	srli	s1,s1,0x1
    8000784c:	ffffe097          	auipc	ra,0xffffe
    80007850:	6cc080e7          	jalr	1740(ra) # 80005f18 <mycpu>
    80007854:	0014f493          	andi	s1,s1,1
    80007858:	06952e23          	sw	s1,124(a0)
    8000785c:	fc5ff06f          	j	80007820 <push_off+0x34>

0000000080007860 <pop_off>:
    80007860:	ff010113          	addi	sp,sp,-16
    80007864:	00813023          	sd	s0,0(sp)
    80007868:	00113423          	sd	ra,8(sp)
    8000786c:	01010413          	addi	s0,sp,16
    80007870:	ffffe097          	auipc	ra,0xffffe
    80007874:	6a8080e7          	jalr	1704(ra) # 80005f18 <mycpu>
    80007878:	100027f3          	csrr	a5,sstatus
    8000787c:	0027f793          	andi	a5,a5,2
    80007880:	04079663          	bnez	a5,800078cc <pop_off+0x6c>
    80007884:	07852783          	lw	a5,120(a0)
    80007888:	02f05a63          	blez	a5,800078bc <pop_off+0x5c>
    8000788c:	fff7871b          	addiw	a4,a5,-1
    80007890:	06e52c23          	sw	a4,120(a0)
    80007894:	00071c63          	bnez	a4,800078ac <pop_off+0x4c>
    80007898:	07c52783          	lw	a5,124(a0)
    8000789c:	00078863          	beqz	a5,800078ac <pop_off+0x4c>
    800078a0:	100027f3          	csrr	a5,sstatus
    800078a4:	0027e793          	ori	a5,a5,2
    800078a8:	10079073          	csrw	sstatus,a5
    800078ac:	00813083          	ld	ra,8(sp)
    800078b0:	00013403          	ld	s0,0(sp)
    800078b4:	01010113          	addi	sp,sp,16
    800078b8:	00008067          	ret
    800078bc:	00001517          	auipc	a0,0x1
    800078c0:	bc450513          	addi	a0,a0,-1084 # 80008480 <digits+0x48>
    800078c4:	fffff097          	auipc	ra,0xfffff
    800078c8:	018080e7          	jalr	24(ra) # 800068dc <panic>
    800078cc:	00001517          	auipc	a0,0x1
    800078d0:	b9c50513          	addi	a0,a0,-1124 # 80008468 <digits+0x30>
    800078d4:	fffff097          	auipc	ra,0xfffff
    800078d8:	008080e7          	jalr	8(ra) # 800068dc <panic>

00000000800078dc <push_on>:
    800078dc:	fe010113          	addi	sp,sp,-32
    800078e0:	00813823          	sd	s0,16(sp)
    800078e4:	00113c23          	sd	ra,24(sp)
    800078e8:	00913423          	sd	s1,8(sp)
    800078ec:	02010413          	addi	s0,sp,32
    800078f0:	100024f3          	csrr	s1,sstatus
    800078f4:	100027f3          	csrr	a5,sstatus
    800078f8:	0027e793          	ori	a5,a5,2
    800078fc:	10079073          	csrw	sstatus,a5
    80007900:	ffffe097          	auipc	ra,0xffffe
    80007904:	618080e7          	jalr	1560(ra) # 80005f18 <mycpu>
    80007908:	07852783          	lw	a5,120(a0)
    8000790c:	02078663          	beqz	a5,80007938 <push_on+0x5c>
    80007910:	ffffe097          	auipc	ra,0xffffe
    80007914:	608080e7          	jalr	1544(ra) # 80005f18 <mycpu>
    80007918:	07852783          	lw	a5,120(a0)
    8000791c:	01813083          	ld	ra,24(sp)
    80007920:	01013403          	ld	s0,16(sp)
    80007924:	0017879b          	addiw	a5,a5,1
    80007928:	06f52c23          	sw	a5,120(a0)
    8000792c:	00813483          	ld	s1,8(sp)
    80007930:	02010113          	addi	sp,sp,32
    80007934:	00008067          	ret
    80007938:	0014d493          	srli	s1,s1,0x1
    8000793c:	ffffe097          	auipc	ra,0xffffe
    80007940:	5dc080e7          	jalr	1500(ra) # 80005f18 <mycpu>
    80007944:	0014f493          	andi	s1,s1,1
    80007948:	06952e23          	sw	s1,124(a0)
    8000794c:	fc5ff06f          	j	80007910 <push_on+0x34>

0000000080007950 <pop_on>:
    80007950:	ff010113          	addi	sp,sp,-16
    80007954:	00813023          	sd	s0,0(sp)
    80007958:	00113423          	sd	ra,8(sp)
    8000795c:	01010413          	addi	s0,sp,16
    80007960:	ffffe097          	auipc	ra,0xffffe
    80007964:	5b8080e7          	jalr	1464(ra) # 80005f18 <mycpu>
    80007968:	100027f3          	csrr	a5,sstatus
    8000796c:	0027f793          	andi	a5,a5,2
    80007970:	04078463          	beqz	a5,800079b8 <pop_on+0x68>
    80007974:	07852783          	lw	a5,120(a0)
    80007978:	02f05863          	blez	a5,800079a8 <pop_on+0x58>
    8000797c:	fff7879b          	addiw	a5,a5,-1
    80007980:	06f52c23          	sw	a5,120(a0)
    80007984:	07853783          	ld	a5,120(a0)
    80007988:	00079863          	bnez	a5,80007998 <pop_on+0x48>
    8000798c:	100027f3          	csrr	a5,sstatus
    80007990:	ffd7f793          	andi	a5,a5,-3
    80007994:	10079073          	csrw	sstatus,a5
    80007998:	00813083          	ld	ra,8(sp)
    8000799c:	00013403          	ld	s0,0(sp)
    800079a0:	01010113          	addi	sp,sp,16
    800079a4:	00008067          	ret
    800079a8:	00001517          	auipc	a0,0x1
    800079ac:	b0050513          	addi	a0,a0,-1280 # 800084a8 <digits+0x70>
    800079b0:	fffff097          	auipc	ra,0xfffff
    800079b4:	f2c080e7          	jalr	-212(ra) # 800068dc <panic>
    800079b8:	00001517          	auipc	a0,0x1
    800079bc:	ad050513          	addi	a0,a0,-1328 # 80008488 <digits+0x50>
    800079c0:	fffff097          	auipc	ra,0xfffff
    800079c4:	f1c080e7          	jalr	-228(ra) # 800068dc <panic>

00000000800079c8 <__memset>:
    800079c8:	ff010113          	addi	sp,sp,-16
    800079cc:	00813423          	sd	s0,8(sp)
    800079d0:	01010413          	addi	s0,sp,16
    800079d4:	1a060e63          	beqz	a2,80007b90 <__memset+0x1c8>
    800079d8:	40a007b3          	neg	a5,a0
    800079dc:	0077f793          	andi	a5,a5,7
    800079e0:	00778693          	addi	a3,a5,7
    800079e4:	00b00813          	li	a6,11
    800079e8:	0ff5f593          	andi	a1,a1,255
    800079ec:	fff6071b          	addiw	a4,a2,-1
    800079f0:	1b06e663          	bltu	a3,a6,80007b9c <__memset+0x1d4>
    800079f4:	1cd76463          	bltu	a4,a3,80007bbc <__memset+0x1f4>
    800079f8:	1a078e63          	beqz	a5,80007bb4 <__memset+0x1ec>
    800079fc:	00b50023          	sb	a1,0(a0)
    80007a00:	00100713          	li	a4,1
    80007a04:	1ae78463          	beq	a5,a4,80007bac <__memset+0x1e4>
    80007a08:	00b500a3          	sb	a1,1(a0)
    80007a0c:	00200713          	li	a4,2
    80007a10:	1ae78a63          	beq	a5,a4,80007bc4 <__memset+0x1fc>
    80007a14:	00b50123          	sb	a1,2(a0)
    80007a18:	00300713          	li	a4,3
    80007a1c:	18e78463          	beq	a5,a4,80007ba4 <__memset+0x1dc>
    80007a20:	00b501a3          	sb	a1,3(a0)
    80007a24:	00400713          	li	a4,4
    80007a28:	1ae78263          	beq	a5,a4,80007bcc <__memset+0x204>
    80007a2c:	00b50223          	sb	a1,4(a0)
    80007a30:	00500713          	li	a4,5
    80007a34:	1ae78063          	beq	a5,a4,80007bd4 <__memset+0x20c>
    80007a38:	00b502a3          	sb	a1,5(a0)
    80007a3c:	00700713          	li	a4,7
    80007a40:	18e79e63          	bne	a5,a4,80007bdc <__memset+0x214>
    80007a44:	00b50323          	sb	a1,6(a0)
    80007a48:	00700e93          	li	t4,7
    80007a4c:	00859713          	slli	a4,a1,0x8
    80007a50:	00e5e733          	or	a4,a1,a4
    80007a54:	01059e13          	slli	t3,a1,0x10
    80007a58:	01c76e33          	or	t3,a4,t3
    80007a5c:	01859313          	slli	t1,a1,0x18
    80007a60:	006e6333          	or	t1,t3,t1
    80007a64:	02059893          	slli	a7,a1,0x20
    80007a68:	40f60e3b          	subw	t3,a2,a5
    80007a6c:	011368b3          	or	a7,t1,a7
    80007a70:	02859813          	slli	a6,a1,0x28
    80007a74:	0108e833          	or	a6,a7,a6
    80007a78:	03059693          	slli	a3,a1,0x30
    80007a7c:	003e589b          	srliw	a7,t3,0x3
    80007a80:	00d866b3          	or	a3,a6,a3
    80007a84:	03859713          	slli	a4,a1,0x38
    80007a88:	00389813          	slli	a6,a7,0x3
    80007a8c:	00f507b3          	add	a5,a0,a5
    80007a90:	00e6e733          	or	a4,a3,a4
    80007a94:	000e089b          	sext.w	a7,t3
    80007a98:	00f806b3          	add	a3,a6,a5
    80007a9c:	00e7b023          	sd	a4,0(a5)
    80007aa0:	00878793          	addi	a5,a5,8
    80007aa4:	fed79ce3          	bne	a5,a3,80007a9c <__memset+0xd4>
    80007aa8:	ff8e7793          	andi	a5,t3,-8
    80007aac:	0007871b          	sext.w	a4,a5
    80007ab0:	01d787bb          	addw	a5,a5,t4
    80007ab4:	0ce88e63          	beq	a7,a4,80007b90 <__memset+0x1c8>
    80007ab8:	00f50733          	add	a4,a0,a5
    80007abc:	00b70023          	sb	a1,0(a4)
    80007ac0:	0017871b          	addiw	a4,a5,1
    80007ac4:	0cc77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007ac8:	00e50733          	add	a4,a0,a4
    80007acc:	00b70023          	sb	a1,0(a4)
    80007ad0:	0027871b          	addiw	a4,a5,2
    80007ad4:	0ac77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007ad8:	00e50733          	add	a4,a0,a4
    80007adc:	00b70023          	sb	a1,0(a4)
    80007ae0:	0037871b          	addiw	a4,a5,3
    80007ae4:	0ac77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007ae8:	00e50733          	add	a4,a0,a4
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	0047871b          	addiw	a4,a5,4
    80007af4:	08c77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	0057871b          	addiw	a4,a5,5
    80007b04:	08c77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	0067871b          	addiw	a4,a5,6
    80007b14:	06c77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	0077871b          	addiw	a4,a5,7
    80007b24:	06c77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b28:	00e50733          	add	a4,a0,a4
    80007b2c:	00b70023          	sb	a1,0(a4)
    80007b30:	0087871b          	addiw	a4,a5,8
    80007b34:	04c77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b38:	00e50733          	add	a4,a0,a4
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	0097871b          	addiw	a4,a5,9
    80007b44:	04c77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	00a7871b          	addiw	a4,a5,10
    80007b54:	02c77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	00b7871b          	addiw	a4,a5,11
    80007b64:	02c77663          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	00c7871b          	addiw	a4,a5,12
    80007b74:	00c77e63          	bgeu	a4,a2,80007b90 <__memset+0x1c8>
    80007b78:	00e50733          	add	a4,a0,a4
    80007b7c:	00b70023          	sb	a1,0(a4)
    80007b80:	00d7879b          	addiw	a5,a5,13
    80007b84:	00c7f663          	bgeu	a5,a2,80007b90 <__memset+0x1c8>
    80007b88:	00f507b3          	add	a5,a0,a5
    80007b8c:	00b78023          	sb	a1,0(a5)
    80007b90:	00813403          	ld	s0,8(sp)
    80007b94:	01010113          	addi	sp,sp,16
    80007b98:	00008067          	ret
    80007b9c:	00b00693          	li	a3,11
    80007ba0:	e55ff06f          	j	800079f4 <__memset+0x2c>
    80007ba4:	00300e93          	li	t4,3
    80007ba8:	ea5ff06f          	j	80007a4c <__memset+0x84>
    80007bac:	00100e93          	li	t4,1
    80007bb0:	e9dff06f          	j	80007a4c <__memset+0x84>
    80007bb4:	00000e93          	li	t4,0
    80007bb8:	e95ff06f          	j	80007a4c <__memset+0x84>
    80007bbc:	00000793          	li	a5,0
    80007bc0:	ef9ff06f          	j	80007ab8 <__memset+0xf0>
    80007bc4:	00200e93          	li	t4,2
    80007bc8:	e85ff06f          	j	80007a4c <__memset+0x84>
    80007bcc:	00400e93          	li	t4,4
    80007bd0:	e7dff06f          	j	80007a4c <__memset+0x84>
    80007bd4:	00500e93          	li	t4,5
    80007bd8:	e75ff06f          	j	80007a4c <__memset+0x84>
    80007bdc:	00600e93          	li	t4,6
    80007be0:	e6dff06f          	j	80007a4c <__memset+0x84>

0000000080007be4 <__memmove>:
    80007be4:	ff010113          	addi	sp,sp,-16
    80007be8:	00813423          	sd	s0,8(sp)
    80007bec:	01010413          	addi	s0,sp,16
    80007bf0:	0e060863          	beqz	a2,80007ce0 <__memmove+0xfc>
    80007bf4:	fff6069b          	addiw	a3,a2,-1
    80007bf8:	0006881b          	sext.w	a6,a3
    80007bfc:	0ea5e863          	bltu	a1,a0,80007cec <__memmove+0x108>
    80007c00:	00758713          	addi	a4,a1,7
    80007c04:	00a5e7b3          	or	a5,a1,a0
    80007c08:	40a70733          	sub	a4,a4,a0
    80007c0c:	0077f793          	andi	a5,a5,7
    80007c10:	00f73713          	sltiu	a4,a4,15
    80007c14:	00174713          	xori	a4,a4,1
    80007c18:	0017b793          	seqz	a5,a5
    80007c1c:	00e7f7b3          	and	a5,a5,a4
    80007c20:	10078863          	beqz	a5,80007d30 <__memmove+0x14c>
    80007c24:	00900793          	li	a5,9
    80007c28:	1107f463          	bgeu	a5,a6,80007d30 <__memmove+0x14c>
    80007c2c:	0036581b          	srliw	a6,a2,0x3
    80007c30:	fff8081b          	addiw	a6,a6,-1
    80007c34:	02081813          	slli	a6,a6,0x20
    80007c38:	01d85893          	srli	a7,a6,0x1d
    80007c3c:	00858813          	addi	a6,a1,8
    80007c40:	00058793          	mv	a5,a1
    80007c44:	00050713          	mv	a4,a0
    80007c48:	01088833          	add	a6,a7,a6
    80007c4c:	0007b883          	ld	a7,0(a5)
    80007c50:	00878793          	addi	a5,a5,8
    80007c54:	00870713          	addi	a4,a4,8
    80007c58:	ff173c23          	sd	a7,-8(a4)
    80007c5c:	ff0798e3          	bne	a5,a6,80007c4c <__memmove+0x68>
    80007c60:	ff867713          	andi	a4,a2,-8
    80007c64:	02071793          	slli	a5,a4,0x20
    80007c68:	0207d793          	srli	a5,a5,0x20
    80007c6c:	00f585b3          	add	a1,a1,a5
    80007c70:	40e686bb          	subw	a3,a3,a4
    80007c74:	00f507b3          	add	a5,a0,a5
    80007c78:	06e60463          	beq	a2,a4,80007ce0 <__memmove+0xfc>
    80007c7c:	0005c703          	lbu	a4,0(a1)
    80007c80:	00e78023          	sb	a4,0(a5)
    80007c84:	04068e63          	beqz	a3,80007ce0 <__memmove+0xfc>
    80007c88:	0015c603          	lbu	a2,1(a1)
    80007c8c:	00100713          	li	a4,1
    80007c90:	00c780a3          	sb	a2,1(a5)
    80007c94:	04e68663          	beq	a3,a4,80007ce0 <__memmove+0xfc>
    80007c98:	0025c603          	lbu	a2,2(a1)
    80007c9c:	00200713          	li	a4,2
    80007ca0:	00c78123          	sb	a2,2(a5)
    80007ca4:	02e68e63          	beq	a3,a4,80007ce0 <__memmove+0xfc>
    80007ca8:	0035c603          	lbu	a2,3(a1)
    80007cac:	00300713          	li	a4,3
    80007cb0:	00c781a3          	sb	a2,3(a5)
    80007cb4:	02e68663          	beq	a3,a4,80007ce0 <__memmove+0xfc>
    80007cb8:	0045c603          	lbu	a2,4(a1)
    80007cbc:	00400713          	li	a4,4
    80007cc0:	00c78223          	sb	a2,4(a5)
    80007cc4:	00e68e63          	beq	a3,a4,80007ce0 <__memmove+0xfc>
    80007cc8:	0055c603          	lbu	a2,5(a1)
    80007ccc:	00500713          	li	a4,5
    80007cd0:	00c782a3          	sb	a2,5(a5)
    80007cd4:	00e68663          	beq	a3,a4,80007ce0 <__memmove+0xfc>
    80007cd8:	0065c703          	lbu	a4,6(a1)
    80007cdc:	00e78323          	sb	a4,6(a5)
    80007ce0:	00813403          	ld	s0,8(sp)
    80007ce4:	01010113          	addi	sp,sp,16
    80007ce8:	00008067          	ret
    80007cec:	02061713          	slli	a4,a2,0x20
    80007cf0:	02075713          	srli	a4,a4,0x20
    80007cf4:	00e587b3          	add	a5,a1,a4
    80007cf8:	f0f574e3          	bgeu	a0,a5,80007c00 <__memmove+0x1c>
    80007cfc:	02069613          	slli	a2,a3,0x20
    80007d00:	02065613          	srli	a2,a2,0x20
    80007d04:	fff64613          	not	a2,a2
    80007d08:	00e50733          	add	a4,a0,a4
    80007d0c:	00c78633          	add	a2,a5,a2
    80007d10:	fff7c683          	lbu	a3,-1(a5)
    80007d14:	fff78793          	addi	a5,a5,-1
    80007d18:	fff70713          	addi	a4,a4,-1
    80007d1c:	00d70023          	sb	a3,0(a4)
    80007d20:	fec798e3          	bne	a5,a2,80007d10 <__memmove+0x12c>
    80007d24:	00813403          	ld	s0,8(sp)
    80007d28:	01010113          	addi	sp,sp,16
    80007d2c:	00008067          	ret
    80007d30:	02069713          	slli	a4,a3,0x20
    80007d34:	02075713          	srli	a4,a4,0x20
    80007d38:	00170713          	addi	a4,a4,1
    80007d3c:	00e50733          	add	a4,a0,a4
    80007d40:	00050793          	mv	a5,a0
    80007d44:	0005c683          	lbu	a3,0(a1)
    80007d48:	00178793          	addi	a5,a5,1
    80007d4c:	00158593          	addi	a1,a1,1
    80007d50:	fed78fa3          	sb	a3,-1(a5)
    80007d54:	fee798e3          	bne	a5,a4,80007d44 <__memmove+0x160>
    80007d58:	f89ff06f          	j	80007ce0 <__memmove+0xfc>
	...
