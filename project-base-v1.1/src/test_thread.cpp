//
// Created by os on 6/22/22.
//

#include "../h/KPCB.hpp"
#include "../h/KRiscv.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.h"
#include "../test/printing.hpp"

uint64 fibonacciSone(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) thread_dispatch();
    return fibonacciSone(n - 1) + fibonacciSone(n - 2);
}
void workerBodyDjape(void* arg) {
    int ind = *(int*)arg;
    uint8 i = 0;
    for (; i < 3; i++) {
        if (ind) time_sleep(10);
        thread_exit();
        printString("A: i=");
        printInt(i);
        printString("\n");
    }

    printString("A: yield\n");
    asm volatile ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    asm volatile ("mv %[t1], t1" : [t1] "=r"(t1));
    printString("A: t1=");
    printInt(t1);
    printString("\n");

    uint64 result = fibonacciSone(20);
    printString("A: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 6; i++) {
        thread_exit();
        thread_dispatch();
        printString("A promenio\n");
        printString("A: i=");
        printInt(i);
        printString("\n");
    }
    printString("A zavrsio\n");
}
void workerBodyComi(void* arg) {
    int ind = *(int*)arg;
    uint8 i = 10;
    for (; i < 13; i++) {
        if (ind) time_sleep(10);
        thread_exit();
        printString("B: i=");
        printInt(i);
        printString("\n");
    }

    printString("B: yield\n");
    asm volatile ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacciSone(23);
    printString("B: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++) {
        thread_exit();
        thread_dispatch();
        printString("B promenio\n");
        printString("B: i=");
        printInt(i);
        printString("\n");
    }
    printString("B zavrsio\n");
}
void test_thread_sync() {
    /*
    KPCB* threads[3];
    threads[0] = KPCB::createThread(nullptr);
    KPCB::running = threads[0];
    threads[1] = KPCB::createThread(&workerBodyA);
    printString("ThreadA created\n");
    threads[2] = KPCB::createThread(&workerBodyB);
    printString("ThreadB created\n");
    while (!(threads[1]->isFinished() && threads[2]->isFinished())) KPCB::yield();
    for (auto& thr: threads) delete thr;
    printString("Finished\n");
    */

    /*
    KPCB* threads[3];
    threads[0] = KPCB::createThread(nullptr, nullptr, nullptr);
    KPCB::running = threads[0];
    size_t sizeBlock = (2 * DEFAULT_STACK_SIZE + 16) / MEM_BLOCK_SIZE + ((2 * DEFAULT_STACK_SIZE + 16) % MEM_BLOCK_SIZE ? 1 : 0);
    void* stackA = KMemoryAllocator::mem_alloc(sizeBlock);
    threads[1] = KPCB::createThread(&workerBodyA, nullptr, stackA);
    printString("ThreadA created\n");
    void* stackB = KMemoryAllocator::mem_alloc(sizeBlock);
    threads[2] = KPCB::createThread(&workerBodyB, nullptr, stackB);
    printString("ThreadB created\n");
    while (!(threads[1]->isFinished() && threads[2]->isFinished())) KPCB::yield();
    for (auto& thr: threads) delete thr;
    printString("Finished\n");
    */

    /*
    KPCB* threads[3];
    threads[0] = KPCB::createThread(nullptr, nullptr, nullptr);
    KPCB::running = threads[0];
    thread_create(&threads[1], workerBodyA, nullptr);
    printString("ThreadA created\n");
    thread_create(&threads[2], workerBodyB, nullptr);
    printString("ThreadB created\n");
    while (!(threads[1]->isFinished() && threads[2]->isFinished())) KPCB::yield();
    for (auto& thr: threads) delete thr;
    printString("Finished\n");
    */


    KPCB* threads[2];
    int ind = 0;
    thread_create(&threads[0], &workerBodyDjape, &ind);
    printString("ThreadA created\n");
    thread_create(&threads[1], &workerBodyComi, &ind);
    printString("ThreadB created\n");
    while (KPCB::counter) KPCB::yield();
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    printString("Finished\n");


    //while (KPCB::counter) KPCB::yield();
    //delete threads[0];

}

uint64 fibonacciDragan(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacciDragan(n - 1) + fibonacciDragan(n - 2);
}
void workerBodyPedja(void* arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i=");
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 100; j++) {
            for (uint64 k = 0; k < 300; k++) { /* busy wait */ }
            // TCB::yield();
        }
    }
}
void workerBodyMilica(void* arg) {
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i=");
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 100; j++) {
            for (uint64 k = 0; k < 300; k++) { /* busy wait */ }
            // TCB::yield();
        }
    }

}
void workerBodySlavica(void* arg) {
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }

    printString("C: yield\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1=");
    printInt(t1);
    printString("\n");

    uint64 result = fibonacciDragan(12);
    printString("C: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 6; i++) {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }
//    TCB::yield();

}
void workerBodyRanko(void* arg) {
    uint8 i = 10;
    for (; i < 13; i++) {
        printString("D: i=");
        printInt(i);
        printString("\n");
    }

    printString("D: yield\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacciDragan(16);
    printString("D: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++) {
        printString("D: i=");
        printInt(i);
        printString("\n");
    }
//    TCB::yield();

}
void test_thread_async() {
    KPCB* threads[4];
    thread_create(&threads[0], &workerBodyPedja, nullptr);
    printString("ThreadA created\n");
    thread_create(&threads[1], &workerBodyMilica, nullptr);
    printString("ThreadB created\n");
    thread_create(&threads[2], &workerBodySlavica, nullptr);
    printString("ThreadC created\n");
    thread_create(&threads[3], &workerBodyRanko, nullptr);
    printString("ThreadD created\n");
    while (KPCB::counter) KPCB::yield();
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    printString("Finished\n");
}

void test_thread_sync_sleep() {
    KPCB* threads[2];
    int ind = 1;
    thread_create(&threads[0], &workerBodyDjape, &ind);
    printString("ThreadA created\n");
    thread_create(&threads[1], &workerBodyComi, &ind);
    printString("ThreadB created\n");
    while (KPCB::counter) KPCB::yield();
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    printString("Finished\n");
}

void test_periodic_thread() {
    class MojaKlasa : public PeriodicThread {
        int num;
    public:
        MojaKlasa(time_t t, int num) : PeriodicThread(t), num(num) {}
        void periodicActivation() override {
            printString("PeriodicThread radi: ");
            printInt(num);
            printString("\n");
        }
    };

    MojaKlasa* m = new MojaKlasa(10, 1);
    MojaKlasa p(25, 2);
    m->start();
    p.start();
    while (KPCB::counter) KPCB::yield();
    delete m;
    printString("Finished\n");
}

void test_thread() {
    test_thread_sync();
    test_thread_async();
    //test_thread_sync_sleep();
    //test_periodic_thread();
}