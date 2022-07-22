//
// Created by os on 6/23/22.
//

#include "../h/KPCB.hpp"
#include "../h/KSemaphore.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.h"

int changeIt = 0;
KSemaphore* mutex = nullptr;

void increment1(void* arg) {
    sem_wait(mutex);
    int tmp = changeIt;
    ++tmp;
    thread_dispatch();
    sem_close(mutex);
    mutex = nullptr;
    changeIt = tmp;
    sem_signal(mutex);
}
void increment2(void* arg) {
    sem_wait(mutex);
    int tmp = changeIt;
    ++tmp;
    thread_dispatch();
    changeIt = tmp;
    sem_signal(mutex);
}
void test_semaphore1() {
    KPCB* threads[20];
    sem_open(&mutex, 1);

    for (int i = 0; i < 20; i++) {
        thread_create(&threads[i], &increment1, nullptr);
        printString("Thread ");
        printInt(i);
        printString(" created\n");
    }

    while (KPCB::counter) KPCB::yield();
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    printString("changeIt: ");
    printInt(changeIt);
    sem_close(mutex);
    mutex = nullptr;
    printString("\nFinished\n");
}
void test_semaphore2() {
    KPCB* threads[20];
    sem_open(&mutex, 1);

    for (int i = 0; i < 20; i++) {
        thread_create(&threads[i], &increment2, nullptr);
        printString("Thread ");
        printInt(i);
        printString(" created\n");
    }

    while (KPCB::counter) KPCB::yield();
    //delete threads[0];
    for (auto& thr: threads) delete thr;
    printString("changeIt: ");
    printInt(changeIt);
    sem_close(mutex);
    mutex = nullptr;
    printString("\nFinished\n");
}

void test_semaphore() {
    //test_semaphore1();
    test_semaphore2();
}