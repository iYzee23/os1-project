//
// Created by os on 6/22/22.
//

#include "../h/syscall_c.h"
#include "../h/KPCB.hpp"
#include "../h/KConsole.hpp"

void *mem_alloc(size_t size) {
    size_t sizeBlock = (size + 16) / MEM_BLOCK_SIZE + ((size + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    asm volatile("mv a1, %0" : : "r" (sizeBlock));
    asm volatile("li a0, 0x01");
    asm volatile("ecall");
    uint64 res;
    asm volatile("mv %0, a0" : "=r" (res));
    return (void*)res;
}

int mem_free(void* addr) {
    uint64 adr = (uint64)addr;
    asm volatile("mv a1, %0" : : "r" (adr));
    asm volatile("li a0, 0x02");
    asm volatile("ecall");
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    return res;
}

void userMode() {
    asm volatile("li a0, 0x05");
    asm volatile("ecall");
}

int thread_create_CPP(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    asm volatile("mv a3, %0" :: "r"(args));
    asm volatile("mv a2, %0" :: "r"(fja));
    asm volatile("mv a1, %0" :: "r"(rucka));
    asm volatile("li a0, 0x10");
    asm volatile("ecall");
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    return res;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;
    uint64 rucka = (uint64)handle;
    uint64 fja = (uint64)start_routine;
    uint64 args = (arg != nullptr ? (uint64)arg : 0);
    void* stack = mem_alloc(2 * DEFAULT_STACK_SIZE);
    asm volatile("mv a4, %0" :: "r"((uint64)stack));
    asm volatile("mv a3, %0" :: "r"(args));
    asm volatile("mv a2, %0" :: "r"(fja));
    asm volatile("mv a1, %0" :: "r"(rucka));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
    int res;
    asm volatile("mv %0, a0" : "=r"(res));
    return res;
}

int thread_exit() {
    asm volatile("li a0, 0x12");
    asm volatile("ecall");
    return -1;
}

void thread_dispatch() {
    asm volatile("li a0, 0x13");
    asm volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    asm volatile("mv a2, %0" :: "r"((uint64)init));
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    asm volatile("li a0, 0x21");
    asm volatile("ecall");
    int res;
    asm volatile("mv %0, a0" : "=r" (res));
    return res;
}

int sem_close(sem_t handle) {
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    asm volatile("li a0, 0x22");
    asm volatile("ecall");
    return 0;
}

int sem_wait(sem_t id) {
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    asm volatile("li a0, 0x23");
    asm volatile("ecall");
    int res = 0;
    if (KPCB::running->isErr()) {
        res = -1;
        KPCB::running->setErr(false);
    }
    return res;
}

int sem_signal(sem_t id) {
    asm volatile("mv a1, %0" :: "r"((uint64)id));
    asm volatile("li a0, 0x24");
    asm volatile("ecall");
    return 0;
}

int time_sleep(time_t time) {
    asm volatile("mv a1, %0" : : "r" (time));
    asm volatile("li a0, 0x31");
    asm volatile("ecall");
    return 0;
}

char getc() {
    asm volatile("li a0, 0x41");
    asm volatile("ecall");
    char res;
    asm volatile("mv %0, a0" : "=r" (res));
    return res;
}

void putc(char c) {
    asm volatile("mv a1, %0" : : "r" ((uint64)c));
    asm volatile("li a0, 0x42");
    asm volatile("ecall");
}