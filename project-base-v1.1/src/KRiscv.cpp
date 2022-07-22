//
// Created by os on 6/22/22.
//

#include "../h/KRiscv.hpp"
#include "../lib/hw.h"
#include "../h/KMemoryAllocator.hpp"
#include "../h/KPCB.hpp"
#include "../h/KSemaphore.hpp"
#include "../h/KSleep.hpp"
#include "../h/KConsole.hpp"

constexpr uint64 TIMER = 0x8000000000000001UL;
constexpr uint64 EXT_HW = 0x8000000000000009UL;
constexpr uint64 ILL_INSTR = 2;
constexpr uint64 ERR_RD = 5;
constexpr uint64 ERR_WR = 7;
constexpr uint64 ECALL_USER = 8;
constexpr uint64 ECALL_SYS = 9;

constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 USER_MODE = 0x05;
constexpr uint64 THREAD_CREATE_CPP = 0x10;
constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;
constexpr uint64 SEM_OPEN = 0x21;
constexpr uint64 SEM_CLOSE = 0x22;
constexpr uint64 SEM_WAIT = 0x23;
constexpr uint64 SEM_SIGNAL = 0x24;
constexpr uint64 TIME_SLEEP = 0x31;
constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void KRiscv::popSppSpie() {
    asm volatile ("csrw sepc, ra");
    asm volatile ("sret");
}

void KRiscv::interruptHandler() {
    uint64 scause = r_scause();
    if (scause == ECALL_SYS || scause == ECALL_USER) {
        uint64 name;
        asm volatile("mv %0, a0" : "=r" (name));
        if (name == MEM_ALLOC) {
            uint64 sizeBlock;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r" (sizeBlock));
            void* res = KMemoryAllocator::mem_alloc(sizeBlock);
            asm volatile("mv a0, %0" : : "r" (res));
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == MEM_FREE) {
            uint64 addr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(addr));
            int res = KMemoryAllocator::mem_free((void*)addr);
            asm volatile("mv a0, %0" : : "r"(res));
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == USER_MODE) {
            KRiscv::mc_sstatus(KRiscv::SSTATUS_SPP);
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == THREAD_CREATE_CPP) {
            KPCB** rucka = nullptr;
            void (*fja)(void*) = nullptr;
            void* args = nullptr;
            void* stack = nullptr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a2" : "=r"(fja));
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a3" : "=r"(args));
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a4" : "=r"(stack));
            *rucka = KPCB::createThread(fja, args, stack);
            if (*rucka != nullptr) asm volatile("li a0, 0");
            else asm volatile("li a0, -1");
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == THREAD_CREATE) {
            KPCB** rucka = nullptr;
            void (*fja)(void*) = nullptr;
            void* args = nullptr;
            void* stack = nullptr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a2" : "=r"(fja));
            asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a3" : "=r"(args));
            asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a4" : "=r"(stack));
            *rucka = KPCB::createThread(fja, args, stack);
            if (*rucka != nullptr) {
                (*rucka)->startIt();
                asm volatile("li a0, 0");
            }
            else asm volatile("li a0, -1");
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == THREAD_EXIT) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            KPCB::running->setFinished(true);
            KPCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (name == THREAD_DISPATCH) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            KPCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (name == SEM_OPEN) {
            KSemaphore** rucka = nullptr;
            unsigned init;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a2" : "=r"(init));
            *rucka = KSemaphore::createSemaphore(init);
            if (*rucka != nullptr) asm volatile("li a0, 0");
            else asm volatile("li a0, -1");
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == SEM_CLOSE) {
            KSemaphore* rucka = nullptr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            delete rucka;
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == SEM_WAIT) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            KSemaphore* rucka = nullptr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            if (rucka) rucka->wait();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (name == SEM_SIGNAL) {
            KSemaphore* rucka = nullptr;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(rucka));
            if (rucka) rucka->signal();
            KRiscv::w_sepc(KRiscv::r_sepc() + 4);
        }
        else if (name == TIME_SLEEP) {
            time_t t;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(t));
            KSleep::add(t);
            uint64 sepc = KRiscv::r_sepc() + 4;
            uint64 sstatus = KRiscv::r_sstatus();
            KPCB::dispatch();
            KRiscv::w_sstatus(sstatus);
            KRiscv::w_sepc(sepc);
        }
        else if (name == GETC) {
            uint64 framePointerGETC = framePointer;
            uint64 sepc = KRiscv::r_sepc() + 4;
            uint64 sstatus = KRiscv::r_sstatus();
            char c = KConsole::inBuff->get();
            asm volatile("mv a0, %0" :: "r"(c));
            asm volatile("sd a0, 10*8(%0)" :: "r"(framePointerGETC));
            KRiscv::w_sstatus(framePointerGETC);
            KRiscv::w_sstatus(sstatus);
            KRiscv::w_sepc(sepc);
        }
        else if (name == PUTC) {
            char c;
            asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
            asm volatile("mv %0, a1" : "=r"(c));
            uint64 sepc = KRiscv::r_sepc() + 4;
            uint64 sstatus = KRiscv::r_sstatus();
            KConsole::outBuff->put(c);
            while ((*(char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)
                   && KConsole::outBuff->getCnt() > 0)
                *(char*)CONSOLE_TX_DATA = KConsole::outBuff->get();
            KRiscv::w_sstatus(sstatus);
            KRiscv::w_sepc(sepc);
        }
    }
    else if (scause == TIMER) {
        KPCB::timeSliceCounter++;
        KSleep::remove();
        if (KPCB::timeSliceCounter >= KPCB::running->TIME_SLICE) {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            KPCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXT_HW) {
        //console_handler();
        int consID = plic_claim();
        if (consID == CONSOLE_IRQ) {
            while ((*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT)
                && KConsole::inBuff->getCnt() < KConsole::BUFF_SIZE)
                KConsole::inBuff->put(*(char*)CONSOLE_RX_DATA);
        }
        plic_complete(consID);
    }
    else if (scause == ERR_RD) {
        /*
        printStringRadi("Error: read\n");
        printIntRadi(KRiscv::r_sstatus());
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }
    else if (scause == ERR_WR) {
        /*
        printStringRadi("Error: read\n");
        printIntRadi(KRiscv::r_sstatus());
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }
    else if (scause == ILL_INSTR) {
        /*
        printStringRadi("Error: read\n");
        printIntRadi(KRiscv::r_sstatus());
        printIntRadi(KRiscv::r_sepc());
        printIntRadi(KRiscv::r_stval());
         */
    }

}